
#include "pr_adc.h"

ADC_HandleTypeDef hadc1;

void PR_ADC_config(){

    __HAL_RCC_ADC12_CLK_ENABLE();

    hadc1.Instance                   =ADC1;
    hadc1.Init.ClockPrescaler        = ADC_CLOCK_ASYNC_DIV4;
    hadc1.Init.Resolution            = ADC_RESOLUTION_12B;
    hadc1.Init.EOCSelection          = ADC_EOC_SINGLE_CONV;

    if (HAL_ADC_Init(&hadc1) != HAL_OK)
    {
        Error_Handler();
    }
}

uint32_t PR_ADC_getValue(){
    return HAL_ADC_GetValue(&hadc1);
}