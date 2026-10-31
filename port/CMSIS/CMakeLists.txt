
#Cortex Microcontroler Software Interface Standards

set(CMSIS arm_cmsis)
set(LIB_CMSIS ${CMSIS} PARENT_SCOPE)

add_library(${CMSIS} INTERFACE)


target_include_directories(${CMSIS} INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/core)