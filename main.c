#include <stdlib.h>
#include <string.h>


#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_tim.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"
#include "stm32f0xx_ll_exti.h"
#include "xprintf.h"
#include "oled_driver.h"


/**
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSI/2)
  *    SYSCLK(Hz)                     = 48000000
  *    HCLK(Hz)                       = 48000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 1
  *    HSI Frequency(Hz)              = 8000000
  *    PLLMUL                         = 12
  *    Flash Latency(WS)              = 1
  */
#define TURN_ON_CONTACT_DEBOUNCER
#define PWM_mode 0
#define FREQ_mode 1

static int mode = PWM_mode;
static int pr_mode = PWM_mode;
static int old_level = 1;
static int new_level = 10;
static int pwm_level = 900;
static int freqpr_level = 4799;
static int freq_level = 1000;
static float enc_to_pwm = 0;
static int base_level = 50;
static int score = 0;
static int cur_note = 0;
static int check = 0;
static int time_note = 0;
static int dyn_check = 0;
static int cur_pin = -1;
static int res = 0;

static void rcc_config()
{
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

/*
 * Clock on GPIOC and set one led
 */
static void gpio_config(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_0, LL_GPIO_PULL_DOWN);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_1, LL_GPIO_PULL_DOWN);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_2, LL_GPIO_PULL_DOWN);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_3, LL_GPIO_PULL_DOWN);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_4, LL_GPIO_PULL_DOWN);
    //LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_1, LL_GPIO_MODE_INPUT);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_6, LL_GPIO_PULL_DOWN);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_7, LL_GPIO_PULL_DOWN);

    return;
}

static void printf_config(void)
{
    xdev_out(oled_putc);
    return;
}

static void rect(int x1, int y1, int x2, int y2, int border_width,  enum color_t color_b, enum color_t color_in)
{
    int x = x1;
    int y = y1;

    for(x = x1; x <= x1+border_width; x++)
    {
        for(y = y1; y <=y2; y++)
        {
            oled_set_pix(x, y, color_b);
            oled_set_pix(x1+x2-x, y, color_b);
        }
    }

    for(y = y1; y <= y1+border_width; y++)
    {
        for(x = x1; x <=x2; x++)
        {
            oled_set_pix(x, y, color_b);
            oled_set_pix(x, y1+y2-y, color_b);
        }
    }


    for(x = x1+border_width; x <= x2-border_width; x++)
    {
        for(y = y1+border_width; y <=y2-border_width; y++)
        {
            oled_set_pix(x, y, color_in);
        }
    }
}


static void exti_config(void)
{
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SYSCFG);

    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE0);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE1);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_1);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE2);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_2);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE3);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_3);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE4);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_4);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE6);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_6);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE7);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_7);



    //LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_0);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_0);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_1);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_2);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_3);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_4);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_6);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_7);

    /*
     * Setting interrupts
     */
    NVIC_EnableIRQ(EXTI0_1_IRQn);
    NVIC_EnableIRQ(EXTI2_3_IRQn);
    NVIC_EnableIRQ(EXTI4_15_IRQn);
    NVIC_SetPriority(EXTI0_1_IRQn, 0);
    NVIC_SetPriority(EXTI2_3_IRQn, 0);
    NVIC_SetPriority(EXTI4_15_IRQn, 0);

}

static int counter_top = 0;

static void tim3_config(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_4, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_5, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOB, LL_GPIO_PIN_4, LL_GPIO_AF_1);
    LL_GPIO_SetAFPin_0_7(GPIOB, LL_GPIO_PIN_5, LL_GPIO_AF_1);
    LL_GPIO_SetPinPull(GPIOB, LL_GPIO_PIN_4, LL_GPIO_PULL_UP);
    LL_GPIO_SetPinPull(GPIOB, LL_GPIO_PIN_5, LL_GPIO_PULL_UP);

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM3);
    LL_TIM_SetEncoderMode(TIM3, LL_TIM_ENCODERMODE_X4_TI12);
    LL_TIM_IC_SetPolarity(TIM3, LL_TIM_CHANNEL_CH1,
                          LL_TIM_IC_POLARITY_FALLING);
    LL_TIM_IC_SetPolarity(TIM3, LL_TIM_CHANNEL_CH2,
                          LL_TIM_IC_POLARITY_FALLING);
    //LL_TIM_IC_SetFilter(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_IC_FILTER_FDIV16_N5);
    //LL_TIM_IC_SetFilter(TIM2, LL_TIM_CHANNEL_CH2, LL_TIM_IC_FILTER_FDIV16_N5);
    LL_TIM_SetAutoReload(TIM3, 999);
    LL_TIM_EnableCounter(TIM3);
    //
    return;
}

    //

__attribute__((naked)) static void delay(void) // 1ms
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0x1770"); //6000

}





static void tim2_config(void)
{
    /*
     * Configure input channel
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_5, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_5, LL_GPIO_AF_2);
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);

    LL_TIM_SetPrescaler(TIM2, freqpr_level);
    LL_TIM_SetAutoReload(TIM2, 999);
    LL_TIM_OC_SetCompareCH1(TIM2, pwm_level);
    LL_TIM_CC_EnableChannel(TIM2, LL_TIM_CHANNEL_CH1);
    LL_TIM_OC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCPOLARITY_HIGH);
    //LL_TIM_OC_SetMode(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_TOGGLE);
    LL_TIM_OC_SetMode(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_PWM1);
    LL_TIM_SetCounterMode(TIM2, LL_TIM_COUNTERMODE_UP);
    LL_TIM_EnableIT_CC1(TIM2);
    LL_TIM_EnableCounter(TIM2);
    /*
     * Setup NVIC
     */
    /*
    NVIC_EnableIRQ(TIM2_IRQn);
    NVIC_SetPriority(TIM2_IRQn, 1);*/
    return;
}

void play_note(int n)
{
    int freq = 0;
    switch(n)
    {
        case(0):
            freq = 0;
            break;
        case(1):
            freq = /*262*/ 183; 
            break;
        case(2):
            freq = /*294*/ 163;
            break;
        case(3):
            freq = /*330*/145;
            break;
        case(4):
            freq = /*349*/ 138;
            break;
        case(5):
            freq = /*392*/ 122;
            break;
        case(6):
            freq = /*440*/ 109;
            break;
        case(7):
            freq = /*494*/ 97;
            break;
     
    }
    LL_TIM_SetPrescaler(TIM2, freq);

}

static void systick_config(void)
{
    LL_InitTick(48000000, 100);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 0);
    return;
}
int digs[4];

void EXTI0_1_IRQHandler(void)
{
    //dyn_check = 0;
    LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
    if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0))
    {
        play_note(1);
        if (res == 1)
        {
            res = 0;
        }
        else if ((cur_note == 1) && (check == 1) ) 
        {
            score++;
            check = 0;
            //dyn_check = 1;
        }

    }
    else if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_1))
    {
        play_note(2);
        if ((cur_note == 2) && (check == 1)) 
        {
            score++;
            check = 0;
            //dyn_check = 1;
        }

    }
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
    counter_top = 0;
}

void EXTI2_3_IRQHandler(void)
{ 
    //dyn_check = 0;
    //LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
    if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_2))
    {

        play_note(3);
        if ((cur_note == 3) && (check == 1)) 
        {
            score++;
            check = 0;
            //dyn_check = 1;
        }

    }
    else if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_3))
    {
        play_note(4);
        if ((cur_note == 4) && (check == 1)) 
        {
            score++;
            check = 0;
           // dyn_check = 1;
        }

    }
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_2);
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_3);
    counter_top = 0;
}

void EXTI4_15_IRQHandler(void)
{
    dyn_check = 0;
    //LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
    if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_4))
    {
        play_note(5);
        if ((cur_note == 5) && (check == 1)) 
        {
            score++;
            check = 0;
            dyn_check = 1; 
        }
    }
    else if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_6))
    {
        play_note(6);
        if ((cur_note == 6) && (check == 1))
        {
            score++;
            check = 0;
           // dyn_check = 1;
        }

    }
    else if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_7))
    {
        play_note(7);
        if ((cur_note == 7) && (check == 1))
        {
            score++;
            check = 0;
           // dyn_check = 1;
        }

    }

    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_4);
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_7);
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_6);

    counter_top = 0;
}
static void vundervaflya(int number, int *dig)
{
    for (int i = 0; i < 4; i++){
        dig[i] = /*(uint8_t)*/ number % 10;
        number = number / 10;
    }

}

static void run_line_digs_str(char* text, int counter, int* digs)
{
    int len = strlen(text);
    int i = 0;
    for (i = 3; i >= 0; i--)
    {
        int dig_n = (counter + i) % len;
        digs[3-i] = (int)(text[dig_n] - '0');
        //printf("i is %d, counter is %d, dig_n is %d, digs[i] is %d\n", i, counter, dig_n, digs[i]);

    }

}

static void set_all_digs(int time4, int* digs)
{

    int j = 0;
    for (j = 0; j < time4; j++){
         set_com(0, digs);
         set_com(1, digs);
         set_com(2, digs);
         set_com(3, digs);
     }

}

int num_sys = 0;
//int note = 1;
//int check = 0;
void draw_piano()
{
    int ip = 1;
    for (ip = 0; ip <=6; ip++)
    {
        rect(ip*18, 0, ip*18+18, 60, 1, clBlack, clWhite);
    }
    /*rect(35, 0, 55, 60, 1, clBlack, clWhite);
    rect(55, 0, 75, 60, 1, clBlack, clWhite);
    rect(75, 0, 95, 60, 1, clBlack, clWhite);
    rect(95, 0, 115, 60, 1, clBlack, clWhite);
   */ 
    rect(12, 0, 24, 40, 0, clBlack, clBlack);
    rect(30, 0, 42, 40, 0, clBlack, clBlack);
    rect(66, 0, 78, 40, 0, clBlack, clBlack);
    rect(84, 0, 96, 40, 0, clBlack, clBlack);
    rect(102, 0, 114, 40, 0, clBlack, clBlack);

    oled_update();
}


void SysTick_Handler(void)
{
    if ((!(LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0))) && (!(LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_1))) && (!(LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_2))) && (!(LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_3))) && (!(LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_4))) && (!(LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_6))) && (!(LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_7))))
    {
        play_note(0);
    }
    if (time_note > 0) 
    {
        time_note--;
    }
    /*else
    {
        draw_piano;
    }*/
    if (((LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0)) && (cur_note == 1)) ||((LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_1)) && (cur_note == 2)) || ((LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_2)) && (cur_note == 3)) || ((LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_3)) && (cur_note == 4)) || ((LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_4)) && (cur_note == 5))||((LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_6)) && (cur_note == 6)) || ((LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_7)) && (cur_note == 7)))
    {
        score++;
    }
    check = 1;
}


void run_line_alt(char* text, int time)
{
    //coms_config();
    int time4 = time / 4;
    int digs[4];
    int counter = 0;
    while(time)
    {
        run_line_digs_str(text, counter, digs);
        //printf("%d %d %d %d\n", digs[0], digs[1], digs[2], digs[3]);
        set_all_digs(time4, digs);
        counter = (counter + 1) % strlen(text);
        time--;
    }

}

int run_line_text = 0;
//int cur_note = 0;
//int time_note  = 1;

void set_note(int note, int time)
{
   draw_piano();
   int mark_x1 = 7 + (note - 1) * 18;
   int mark_y1 = 50;
   rect(mark_x1, mark_y1, mark_x1 + 4, mark_y1 + 4, 0, clBlack, clBlack);
   oled_update();
   cur_note = note;
   time_note = time;
}

void clear_oled()
{
   rect(0, 0, 128, 64, 0, clBlack, clBlack);
   oled_update;
}
void keep_note(int note, int time)
{
    set_note(note, time);
    while (time_note != 0)
    {
        //set_note( note, time);
    }
}
void melody1()
{
    keep_note(3, 40);
    keep_note(5, 40);
    keep_note(3, 40);
    keep_note(6, 40);
    keep_note(3, 40);
    keep_note(5, 40);
    keep_note(3, 40);
    keep_note(0, 40);
    keep_note(3, 40);
    keep_note(5, 40);
    keep_note(3, 40);
    keep_note(6, 40);
    keep_note(0, 10);
    keep_note(6, 40);
    keep_note(3, 40); 
}
int main(void)
{
    rcc_config();
    gpio_config();
    oled_config();
    printf_config();
    exti_config();
    tim3_config();
    tim2_config();
    systick_config();
    res = 1;
    xprintf("\n         PRESS \n         USER\n         BUTTON\n        TO START");
    oled_update();
    while(1)
    {
        if (res == 0)
        {
            clear_oled();
            draw_piano();
            melody1();
            clear_oled();
            oled_set_cursor(0,0);
            xprintf("\n  your score is %d\n\n press USER button\n to try again", score);
            oled_update();
            res = 1;
        }
    }
    //while (1)
    //{
        //play_note(1);
    

    //}
/*
    {
       set_all_digs(100, digs);

    }*/
/*{
        if (LL_TIM_GetCounterMode(TIM3) == LL_TIM_COUNTERMODE_UP) {
            LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_8);
            LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_9);
        }
        if (LL_TIM_GetCounterMode(TIM3) == LL_TIM_COUNTERMODE_DOWN) {
            LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_9);
            LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_8);
        }
        delay();
    }*/
    return 0;
}
