/*
*copoyright @2026 parerotechhub company
*@brief: the API implementation for parero GPIO operation
*
*/
#include "pr_gpio.h"

void pr_pin_config(){

    //To enable GPIO AHB Clock 
    __HAL_RCC_GPIOA_CLK_ENABLE(); 

    //Configuration information of GPIO Peripheral
    GPIO_InitTypeDef initGPIO={0};
    initGPIO.Pin=GPIO_PIN_0;
    initGPIO.Mode=GPIO_MODE_ANALOG;
     
    HAL_GPIO_Init(GPIOA,&initGPIO);
}