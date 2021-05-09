KDIR ?= /lib/modules/`uname -r`/build
MOD_DIR ?= /lib/modules/`uname -r`/kernel

default:
	$(MAKE) -C $(KDIR) M=$$PWD CONFIG_LEDS_FD628=m

clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean

install: 
	# To fulfill depmod, be sure to have System.map
	# in your build directory, eg:
	#
	# ln -sf /boot/System.map-$$(uname -r) System.map
	#
	$(MAKE) -C $(KDIR) M=$$PWD modules_install
