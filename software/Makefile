#GCC=/opt/Xilinx/SDK/2017.1/gnu/arm/lin/bin/arm-xilinx-eabi-gcc
#GCC=/usr/gcc-linaro-6.3.1-2017.02-x86_64_arm-eabi/bin/arm-eabi-gcc
GCC=arm-none-eabi-gcc
#AR=/opt/Xilinx/SDK/2017.1/gnu/arm/lin/bin/arm-xilinx-eabi-ar
#AR=/usr/gcc-linaro-6.3.1-2017.02-x86_64_arm-eabi/bin/arm-eabi-ar
AR=arm-none-eabi-ar
#SIZE=/opt/Xilinx/SDK/2017.1/gnu/arm/lin/bin/arm-xilinx-eabi-size
#SIZE=/usr/gcc-linaro-6.3.1-2017.02-x86_64_arm-eabi/bin/arm-eabi-size
SIZE=arm-none-eabi-size
#XILINX_LIB=/opt/Xilinx/SDK/2017.1/gnu/arm/lin/arm-xilinx-eabi/lib
XILINX_LIB=/usr/lib/arm-none-eabi/newlib
#XILINX_LIB=/usr/gcc-linaro-6.3.1-2017.02-x86_64_arm-eabi/lib/
#XILINX_LIB=/usr/gcc-linaro-6.3.1-2017.02-x86_64_arm-eabi/arm-eabi/libc/usr/lib
LIBRARY = libxil.a


# All Target
all: $(LIBRARY) GreedyFTL270 GreedyFTL271 GreedyFTL300

$(LIBRARY):
	cd libxil; GCC=$(GCC) AR=$(AR) $(MAKE)

GreedyFTL270:
	cd GreedyFTL-2.7.0.d; GCC=$(GCC) SIZE=$(SIZE) XILINX_LIB=$(XILINX_LIB) $(MAKE)
	
GreedyFTL271:
	cd GreedyFTL-2.7.1.d; GCC=$(GCC) SIZE=$(SIZE) XILINX_LIB=$(XILINX_LIB) $(MAKE)
	
GreedyFTL300:
	cd GreedyFTL-3.0.0; GCC=$(GCC) SIZE=$(SIZE) XILINX_LIB=$(XILINX_LIB) $(MAKE)

clean:
	cd libxil; $(MAKE) clean; cd ..
	cd GreedyFTL-2.7.0.d; $(MAKE) clean; cd ..
	cd GreedyFTL-2.7.1.d; $(MAKE) clean; cd ..
	cd GreedyFTL-3.0.0; $(MAKE) clean; cd ..
