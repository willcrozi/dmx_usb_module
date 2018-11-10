#!/bin/sh

make -C /usr/src/linux-headers-$(uname -r) M=$(pwd) modules \
 && echo "reloading dmx_usb module..." && sudo sh -c "rmmod dmx_usb.ko; insmod dmx_usb.ko"