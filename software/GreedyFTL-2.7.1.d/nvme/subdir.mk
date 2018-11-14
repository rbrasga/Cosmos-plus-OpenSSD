################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
nvme/host_lld.c \
nvme/nvme_admin_cmd.c \
nvme/nvme_identify.c \
nvme/nvme_io_cmd.c \
nvme/nvme_main.c 

OBJS += \
nvme/host_lld.o \
nvme/nvme_admin_cmd.o \
nvme/nvme_identify.o \
nvme/nvme_io_cmd.o \
nvme/nvme_main.o 

C_DEPS += \
nvme/host_lld.d \
nvme/nvme_admin_cmd.d \
nvme/nvme_identify.d \
nvme/nvme_io_cmd.d \
nvme/nvme_main.d 


# Each subdirectory must supply rules for building sources it contributes
src/nvme/%.o: ../src/nvme/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	$(GCC) -mcpu=cortex-a9 -mfloat-abi=soft -Wall -O2 -c -fmessage-length=0 -MT"$@" -I../../BSP/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


