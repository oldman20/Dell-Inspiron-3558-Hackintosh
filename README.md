# Dell-Inspiron-3558-Hackintosh
Track-log installation macOS Monterey on Dell Inspiron 3558 i5 - 5200U/ nVIDIA GeForce 920M

Details:
Dell Inspiron 3558 (UEFI) - Intel Core i5 (5th Gen) 5200U /2.20GHz - 8GB RAM DDR3L - Intel(R) HD Graphics 5500/ nVIDIA GeForce 920M - 1366x768 - Realtek ALC255/ALC3234 @ Intel Wildcat Point-LP PCH - High Definition Audio Controller [F0]/ layout-id=20 - Intel(R) Dual Band Wireless-AC 3160 - Dell Touchpad /Synaptics I2C- Samsung SSD 860 EVO MZ-76E250BW 250GB (GPT)

PCI Shell output:

   Seg  Bus  Dev  Func
   ---  ---  ---  ----
    00   00   00    00 ==> Bridge Device - Host/PCI bridge
             Vendor 8086 Device 1604 Prog Interface 0
    00   00   02    00 ==> Display Controller - VGA/8514 controller
             Vendor 8086 Device 1616 Prog Interface 0
    00   00   03    00 ==> Multimedia Device - Mixed mode device
             Vendor 8086 Device 160C Prog Interface 0
    00   00   14    00 ==> Serial Bus Controllers - USB
             Vendor 8086 Device 9CB1 Prog Interface 30
    00   00   16    00 ==> Simple Communications Controllers - Other communication device
             Vendor 8086 Device 9CBA Prog Interface 0
    00   00   1B    00 ==> Multimedia Device - Mixed mode device
             Vendor 8086 Device 9CA0 Prog Interface 0
    00   00   1C    00 ==> Bridge Device - PCI/PCI bridge
             Vendor 8086 Device 9C90 Prog Interface 0
    00   00   1C    02 ==> Bridge Device - PCI/PCI bridge
             Vendor 8086 Device 9C94 Prog Interface 0
    00   00   1C    04 ==> Bridge Device - PCI/PCI bridge
             Vendor 8086 Device 9C98 Prog Interface 0
    00   00   1D    00 ==> Serial Bus Controllers - USB
             Vendor 8086 Device 9CA6 Prog Interface 20
    00   00   1F    00 ==> Bridge Device - PCI/ISA bridge
             Vendor 8086 Device 9CC3 Prog Interface 0
    00   00   1F    02 ==> Mass Storage Controller - Serial ATA controller
             Vendor 8086 Device 9C83 Prog Interface 1
    00   00   1F    03 ==> Serial Bus Controllers - System Management Bus
             Vendor 8086 Device 9CA2 Prog Interface 0
    00   06   00    00 ==> Network Controller - Other network controller
             Vendor 8086 Device 08B3 Prog Interface 0
    00   08   00    00 ==> Display Controller - 3D controller
             Vendor 10DE Device 1299 Prog Interface 0
             
dmesg | grep -i input
[    1.047936] input: Lid Switch as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0D:00/input/input0
[    1.047995] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input1
[    1.048040] input: Sleep Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0E:00/input/input2
[    1.048079] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input3
[    1.104768] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input4
[    1.519008] input: DLL06B0:00 06CB:78F1 Mouse as /devices/pci0000:00/INT3433:00/i2c-1/i2c-DLL06B0:00/0018:06CB:78F1.0001/input/input7
[    1.519138] hid-generic 0018:06CB:78F1.0001: input,hidraw0: I2C HID v1.00 Mouse [DLL06B0:00 06CB:78F1] on i2c-DLL06B0:00
[    2.820686] input: Synaptics TM3096-001 as /devices/pci0000:00/INT3433:00/i2c-1/i2c-DLL06B0:00/0018:06CB:78F1.0001/input/input9
[    2.820777] hid-rmi 0018:06CB:78F1.0001: input,hidraw0: I2C HID v1.00 Mouse [DLL06B0:00 06CB:78F1] on i2c-DLL06B0:00
[    3.004622] input: Logitech USB Receiver as /devices/pci0000:00/0000:00:14.0/usb2/2-3/2-3:1.0/0003:046D:C52B.0002/input/input10
[    3.058075] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input11
[    3.062976] hid-generic 0003:046D:C52B.0002: input,hidraw1: USB HID v1.11 Keyboard [Logitech USB Receiver] on usb-0000:00:14.0-3/input0
[    3.063079] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/device:1e/LNXVIDEO:01/input/input12
[    3.065008] input: Logitech USB Receiver Mouse as /devices/pci0000:00/0000:00:14.0/usb2/2-3/2-3:1.1/0003:046D:C52B.0003/input/input13
[    3.065153] input: Logitech USB Receiver Consumer Control as /devices/pci0000:00/0000:00:14.0/usb2/2-3/2-3:1.1/0003:046D:C52B.0003/input/input14
[    3.122967] input: Logitech USB Receiver System Control as /devices/pci0000:00/0000:00:14.0/usb2/2-3/2-3:1.1/0003:046D:C52B.0003/input/input15
[    3.123094] hid-generic 0003:046D:C52B.0003: input,hiddev0,hidraw2: USB HID v1.11 Mouse [Logitech USB Receiver] on usb-0000:00:14.0-3/input1
[    3.124604] hid-generic 0003:046D:C52B.0004: hiddev1,hidraw3: USB HID v1.11 Device [Logitech USB Receiver] on usb-0000:00:14.0-3/input2
[    3.332372] logitech-djreceiver 0003:046D:C52B.0004: hiddev0,hidraw1: USB HID v1.11 Device [Logitech USB Receiver] on usb-0000:00:14.0-3/input2
[    3.455678] input: Logitech Wireless Device PID:4069 Keyboard as /devices/pci0000:00/0000:00:14.0/usb2/2-3/2-3:1.2/0003:046D:C52B.0004/0003:046D:4069.0005/input/input17
[    3.455972] input: Logitech Wireless Device PID:4069 Mouse as /devices/pci0000:00/0000:00:14.0/usb2/2-3/2-3:1.2/0003:046D:C52B.0004/0003:046D:4069.0005/input/input18
[    3.456383] hid-generic 0003:046D:4069.0005: input,hidraw2: USB HID v1.11 Keyboard [Logitech Wireless Device PID:4069] on usb-0000:00:14.0-3/input2:1
[    3.576161] input: Logitech MX Master 2S as /devices/pci0000:00/0000:00:14.0/usb2/2-3/2-3:1.2/0003:046D:C52B.0004/0003:046D:4069.0005/input/input22
[    3.576301] logitech-hidpp-device 0003:046D:4069.0005: input,hidraw2: USB HID v1.11 Keyboard [Logitech MX Master 2S] on usb-0000:00:14.0-3/input2:1
[    6.353578] input: DELL Wireless hotkeys as /devices/virtual/input/input23
[    6.867359] input: Integrated_Webcam_HD: Integrate as /devices/pci0000:00/0000:00:14.0/usb2/2-5/2-5:1.0/input/input24
[    6.911204] input: Dell WMI hotkeys as /devices/platform/PNP0C14:01/wmi_bus/wmi_bus-PNP0C14:01/9DBB5994-A997-11DA-B012-B622A1EF5492/input/input25
[    7.306338] input: HDA Intel HDMI HDMI/DP,pcm=3 as /devices/pci0000:00/0000:00:03.0/sound/card0/input26
[    7.306428] input: HDA Intel HDMI HDMI/DP,pcm=7 as /devices/pci0000:00/0000:00:03.0/sound/card0/input27
[    7.306506] input: HDA Intel HDMI HDMI/DP,pcm=8 as /devices/pci0000:00/0000:00:03.0/sound/card0/input28
[    7.306580] input: HDA Intel HDMI HDMI/DP,pcm=9 as /devices/pci0000:00/0000:00:03.0/sound/card0/input29
[    7.306660] input: HDA Intel HDMI HDMI/DP,pcm=10 as /devices/pci0000:00/0000:00:03.0/sound/card0/input30
[    7.363204] snd_hda_codec_realtek hdaudioC1D0:    inputs:
[    7.440736] input: HDA Intel PCH Headphone Mic as /devices/pci0000:00/0000:00:1b.0/sound/card1/input31
[   14.133895] rfkill: input handler disabled
[   20.845540] rfkill: input handler enabled
[   26.242864] rfkill: input handler disabled

