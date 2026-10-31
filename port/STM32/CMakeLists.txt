
#Releated Startup Code and Linker Script depend onvariable .........<TARGET_MCU>......
#${TARGET_MCU}_FLASH.ld to define LInker Script
#startup_${TARGET_MCU}.s to define the startup code 

set(STM32 stm32)
set(PORT_STM32 ${STM32} PARENT_SCOPE)
set(LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/${TARGET_MCU}_FLASH.ld PARENT_SCOPE)

add_library(${STM32} INTERFACE)

#Need to be changed in the final production, use set() for each file file(GLOB) can produce unexpected results
file(GLOB_RECURSE SRC_DIR 
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.c
)

set(
    SRC_DIR ${SRC_DIR}

    ${CMAKE_CURRENT_SOURCE_DIR}/startup_${TARGET_MCU}.s 
    ${CMAKE_CURRENT_SOURCE_DIR}/system_${MCU_FAMILY}.c
)

set(INC_DIR
    ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${CMAKE_CURRENT_SOURCE_DIR}/include/device
    ${CMAKE_CURRENT_SOURCE_DIR}
)

target_include_directories(${STM32} INTERFACE ${INC_DIR})
target_sources(${STM32} INTERFACE ${SRC_DIR})