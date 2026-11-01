
/*
*@brief: parero GPIO driver API for end user
*/
#ifndef __PR_GPIO_H
#define __PR_GPIO_H


#include "stm32h7xx.h"
#include "stm32h7xx_hal.h"
#include "stm32h7xx_hal_conf.h"
 

void pr_pin_config();
uint32_t pr_read_pin();
void pr_toggle_pin();
void pr_write_pin(uint32_t data);
// The recommended approach is to use our custom definitions
//which will be exposed to end user and under the hood we will call Vendor HAL 


#endif