ifneq ($(MAKECMDGOALS),clean)
ifeq ($(GCC),)
$(info 'Please define GCC')
endif
ifeq ($(SIZE),)
$(info 'Please define SIZE')
endif
ifeq ($(XILINX_LIB),)
$(info 'Please define XILINX_LIB')
endif
endif

RM := rm -rf

# All of the sources participating in the build are defined here
-include nvme/subdir.mk
-include subdir.mk
-include src.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif


# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
CosmosPlusFirmware.elf.size \

# All Target
all: CosmosPlusFirmware.elf secondary-outputs

# Tool invocations
CosmosPlusFirmware.elf: $(OBJS) lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM gcc linker'
	$(GCC) -mcpu=cortex-a9 -mfloat-abi=soft -Wl,-T -Wl,lscript.ld -L../libxil/ps7_cortexa9_0/lib -L$(XILINX_LIB) -o "CosmosPlusFirmware.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

CosmosPlusFirmware.elf.size: CosmosPlusFirmware.elf
	@echo 'Invoking: ARM Print Size'
	$(SIZE) CosmosPlusFirmware.elf  |tee "CosmosPlusFirmware.elf.size"
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
