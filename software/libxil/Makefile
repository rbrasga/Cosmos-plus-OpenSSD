ifneq ($(MAKECMDGOALS),clean)
ifeq ($(GCC),)
$(info 'libxil: Please define GCC')
endif
ifeq ($(AR),)
$(info 'libxil: Please define GCC')
endif
endif

PROCESSOR = ps7_cortexa9_0
LIBRARIES = ${PROCESSOR}/lib/libxil.a
BSP_MAKEFILES := $(wildcard $(PROCESSOR)/libsrc/*/src/Makefile)
SUBDIRS := $(patsubst %/Makefile, %, $(BSP_MAKEFILES))
DIRS := . $(shell find $(SUBDIRS) -type d)
GARBAGE_PATTERNS := *.o *~ core .depend .*.cmd *.ko *.mod.c
GARBAGE := $(foreach DIR,$(DIRS),$(addprefix $(DIR)/,$(GARBAGE_PATTERNS)))

ifneq (,$(findstring win,$(RDI_PLATFORM)))
 SHELL = CMD
endif

all: libs
	@echo 'Finished building libraries'

include: $(addsuffix /make.include,$(SUBDIRS))

libs: $(addsuffix /make.libs,$(SUBDIRS))

$(PROCESSOR)/lib/libxil.a: $(PROCESSOR)/lib/libxil_init.a
	cp -f $< $@

%/make.include: $(if $(wildcard $(PROCESSOR)/lib/libxil_init.a),$(PROCESSOR)/lib/libxil.a,)
	@echo "Running Make include in $(subst /make.include,,$@)"
	$(MAKE) -C $(subst /make.include,,$@) -s include  "SHELL=$(SHELL)" "COMPILER=$(GCC)" "ARCHIVER=$(AR)" "COMPILER_FLAGS=  -O2 -c" "EXTRA_COMPILER_FLAGS=-g -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=soft -nostartfiles"

%/make.libs: include
	@echo "Running Make libs in $(subst /make.libs,,$@)"
	$(MAKE) -C $(subst /make.libs,,$@) -s libs  "SHELL=$(SHELL)" "COMPILER=$(GCC)" "ARCHIVER=$(AR)" "COMPILER_FLAGS=  -O2 -c" "EXTRA_COMPILER_FLAGS=-g -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=soft -nostartfiles"

clean:
	rm -f ${PROCESSOR}/lib/libxil.a
	rm -rf $(GARBAGE)
