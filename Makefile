KDIR ?= /lib/modules/`uname -r`/build

default:
	$(MAKE) -C $(KDIR) M=$$PWD CONFIG_LEDS_FD628=m

clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean

