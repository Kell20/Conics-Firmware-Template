#Describe the target System based on user configuration


set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_EXECUTABLE_SUFFIX_C ".elf")
set(CMAKE_EXECUTABLE_SUFFIX_ASM ".elf")
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_C_COMPILER_ID GNU)
set(TOOLCHAIN_PREFIX "arm-none-eabi")
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_ASM_COMPILER ${TOOLCHAIN_PREFIX}-gcc)

set(OBJ_CPY ${TOOLCHAIN_PREFIX}-objcopy)
set(OBJ_SIZE ${TOOLCHAIN_PREFIX}-size)
set(OBJ_DUMP ${TOOLCHAIN_PREFIX}-objdump)
 
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