
#include "pr_lm35.h"
#include "pr_adc.h"


float PR_LM35_readTemp(){
    //Get digital ADC count  from ADC peripheral
    PR_ADC_config();
    uint32_t adc_value= PR_ADC_getValue();
    
    //From the datasheet sensitivity is about 10mV/c
    float voltage =((float)adc_value / 4095.0f) * 3.3f;
    float temperature =voltage / 0.010f;

    return temperature;
}