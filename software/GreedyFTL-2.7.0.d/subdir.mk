################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/fmc_driver.c \
../src/init_ftl.c \
../src/low_level_scheduler.c \
../src/lru_buffer.c \
../src/main.c \
../src/page_map.c 

OBJS += \
./src/fmc_driver.o \
./src/init_ftl.o \
./src/low_level_scheduler.o \
./src/lru_buffer.o \
./src/main.o \
./src/page_map.o 

C_DEPS += \
./src/fmc_driver.d \
./src/init_ftl.d \
./src/low_level_scheduler.d \
./src/lru_buffer.d \
./src/main.d \
./src/page_map.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-eabi-gcc -mcpu=cortex-a9 -mfloat-abi=soft -Wall -O2 -c -fmessage-length=0 -MT"$@" -I../../BSP/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


