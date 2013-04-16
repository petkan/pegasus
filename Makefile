KDIR ?= /lib/modules/`uname -r`/build

obj-m  := pegasus.o

default:
	$(MAKE) -C $(KDIR) M=$$PWD

clean:
	rm -fr *.o *.ko .tmp* .pegasus.* *.order *.symvers *.mod.c .built-in.*
