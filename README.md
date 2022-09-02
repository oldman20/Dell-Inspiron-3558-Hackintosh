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
![Screen Shot 2022-09-02 at 13 39 01](https://user-images.githubusercontent.com/39668756/188074365-41d3e164-aabd-45cb-ad18-22d5d6e06e2a.png)
