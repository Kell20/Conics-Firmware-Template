
//Example, application of blinking LED
#include "pr_gpio.h"

void blink_LED()
{
    //Config pin
    pr_pin_config(GPIOA, GPIO_PIN_1, GPIO_MODE_INPUT, GPIO_NOPULL, GPIO_SPEED_FREQ_MEDIUM);
    
    //OTHER PROCESS WILL FOLLOW
}

void startApp()
{
    blink_LED();
}