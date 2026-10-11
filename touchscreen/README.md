# Disable ELAN touchscreen

On my t490 I got a touchscreen which I don't use and unecessarily
draws power. Install the udev rule to disable it.

NOTE: udev rule might need some tweaking as the device can
be recognised differently on your machine.

$ lsusb
Bus 001 Device 003: ID <idvendor>:<idproduct> Elan Microelectronics Corp. Touchscreen

$ cat 99-disable-touchscreen.rules
SUBSYSTEM=="usb", ATTRS{idVendor}=="<idvendor>", ATTRS{idProduct}=="<idproduct>", ATTR{authorized}="0", ATTR{power/control}="auto", ATTR{power/autosuspend_delay_ms}="0"

