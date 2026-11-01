#User Should Config The Whole Project Using This File
#Both Target Microcontroller and Device Family will be secified by USer
#Example this file define STM32H750xx Target MCU 

#Two Variable to be Filled by USer ...<TARGET_MCU>....  .....<MCU_FAMILY>.....

set(TARGET_MCU STM32H750xx)
set(MCU_FAMILY stm32h7xx)

set(C_DEFS
    USE_HAL
    ${TARGET_MCU}
)
set(C_FLAGS 
    -mcpu=cortex-m7
    -fdata-sections
    -ffunction-sections   
    -mfpu=fpv5-d16
    -mfloat-abi=hard
    -flto
    -O0
)

set(LINKER_FLAGS   
    -Wl,--print-memory-usage
    -Wl,--gc-sections
    -Wl,--start-group -lm -Wl,--end-group
    --specs=nano.specs
)