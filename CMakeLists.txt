
#PCX Firmware Project Template

cmake_minimum_required(
    VERSION 3.27
)

project(
    parero_devB
    LANGUAGES C ASM
    VERSION 1.0
    DESCRIPTION "Firmware Template for Flexible MCU Family"
)

include(./stm32_toolchain_conf.cmake)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)

add_subdirectory(${CMAKE_SOURCE_DIR}/port/CMSIS)
add_subdirectory(${CMAKE_SOURCE_DIR}/port/STM32)

add_executable(${CMAKE_PROJECT_NAME} 
    main.c
)

target_sources(${CMAKE_PROJECT_NAME} PRIVATE 
    ${CMAKE_SOURCE_DIR}/driver/helper/sys.c
)

target_include_directories(${CMAKE_PROJECT_NAME} PRIVATE 
    ${CMAKE_SOURCE_DIR}/driver/helper
    ${CMAKE_SOURCE_DIR}/driver
)

target_compile_options( ${CMAKE_PROJECT_NAME} PRIVATE
    ${C_FLAGS}
)

target_link_options(${CMAKE_PROJECT_NAME} PRIVATE

    ${C_FLAGS}  
    ${LINKER_FLAGS} 
    -T${LINKER_SCRIPT}
)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE 
    ${PORT_STM32} 
    ${LIB_CMSIS}
)

add_custom_command(TARGET ${CMAKE_PROJECT_NAME} POST_BUILD
    COMMAND ${OBJ_CPY} -O binary $<TARGET_FILE:${CMAKE_PROJECT_NAME}> ${CMAKE_PROJECT_NAME}.bin
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/bin
)