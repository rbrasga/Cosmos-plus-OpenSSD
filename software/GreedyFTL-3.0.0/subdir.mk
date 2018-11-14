################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
lscript.ld 

C_SRCS += \
fmc_driver.c \
init_ftl.c \
low_level_scheduler.c \
lru_buffer.c \
main.c \
page_map.c 

OBJS += \
fmc_driver.o \
init_ftl.o \
low_level_scheduler.o \
lru_buffer.o \
main.o \
page_map.o 

C_DEPS += \
fmc_driver.d \
init_ftl.d \
low_level_scheduler.d \
lru_buffer.d \
main.d \
page_map.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: %.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	$(GCC) -mcpu=cortex-a9 -mfloat-abi=soft -Wall -O2 -c -fmessage-length=0 -MT"$@" -I../libxil/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


