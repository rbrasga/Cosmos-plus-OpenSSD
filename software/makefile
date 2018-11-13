################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/nvme/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
CosmosPlusFirmware.elf.size \


# All Target
all: CosmosPlusFirmware.elf secondary-outputs

# Tool invocations
CosmosPlusFirmware.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM gcc linker'
	arm-eabi-gcc -mcpu=cortex-a9 -mfloat-abi=soft -Wl,-T -Wl,../src/lscript.ld -L../../BSP/ps7_cortexa9_0/lib -L/opt/Xilinx/SDK/2017.1/gnu/arm/lin/arm-xilinx-eabi/lib -o "CosmosPlusFirmware.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

CosmosPlusFirmware.elf.size: CosmosPlusFirmware.elf
	@echo 'Invoking: ARM Print Size'
	arm-eabi-size CosmosPlusFirmware.elf  |tee "CosmosPlusFirmware.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) CosmosPlusFirmware.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
