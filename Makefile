# obj-m is a list of what kernel modules to build.  The .o and other
# objects will be automatically built from the corresponding .c file -
# no need to list the source files explicitly.

obj-m := helloworld.o

# KDIR is the location of the kernel source.  The current standard is
# to link to the associated source tree from the directory containing
# the compiled modules.
# KDIR  := /lib/modules/$(shell uname -r)/build
# 这里写内核源码目录
KDIR := 

# PWD is the current working directory and the location of our module
# source files.
PWD   := $(shell pwd)

# default is the default make target.  The rule here says to run make
# with a working directory of the directory containing the kernel
# source and compile only the modules in the PWD (local) directory.
default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules


clean:
	rm -f *.ko *.o kvm_ivshmem.mod.c Module.symvers .*.cmd modules.order *.mod.c *.mod
