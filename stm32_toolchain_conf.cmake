#User Should Config The Whole Project Using This File
#Both Target Microcontroller and Device Family will be secified by USer
#Example this file define STM32H750xx Target MCU 

#Two Variable to be Filled by USer ...<TARGET_MCU>....  .....<MCU_FAMILY>.....

set(TARGET_MCU STM32H750xx)
set(MCU_FAMILY stm32h7xx)

set(C_DEFS
    -DUSE_HAL
    -D${TARGET_MCU}
)