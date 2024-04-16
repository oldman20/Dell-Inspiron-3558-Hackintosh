### MISTAKE:
Edit in config.plist:
>UEFI> Drivers> 6: Arguments <>
>
> Comment: BTRFS drivers from rEFInd 0.13.3.1

# Dell-Inspiron-3558-Hackintosh
Track-log installation macOS Monterey on Dell Inspiron 3558 i5 - 5200U/ nVIDIA GeForce 920M
![1](https://user-images.githubusercontent.com/39668756/193019877-8c1fcfe6-cac1-460e-a497-ff6460e68f99.png)

#Details:
BIOS Version: A21 | CFG lock, VarStoreInfo (VarOffset/VarName): 0x37

Dell Inspiron 3558 (UEFI) - Intel Core i5 (5th Gen) 5200U /2.20GHz - 8GB RAM DDR3L - Intel(R) HD Graphics 5500/ nVIDIA GeForce 920M - 1366x768 - Realtek ALC255/ALC3234 @ Intel Wildcat Point-LP PCH - High Definition Audio Controller [F0]/ layout-id=20 - Intel(R) Dual Band Wireless-AC 3160 - Dell Touchpad /Synaptics I2C- Samsung SSD 860 EVO MZ-76E250BW 250GB (GPT)

#Analyzed:
another way: sudo lshw (in linux)

PCI Shell output:
![Screen Shot 2022-09-02 at 13 40 38](https://user-images.githubusercontent.com/39668756/188074661-c4aa71bf-909f-41b9-8406-22ffb3105aaa.png)

lsusb output:
![Screen Shot 2022-09-02 at 13 42 59](https://user-images.githubusercontent.com/39668756/188075104-54f351e4-147b-45b5-9c46-4073e5a07d89.png)

             
dmesg | grep -i input
![Screen Shot 2022-09-02 at 13 39 01](https://user-images.githubusercontent.com/39668756/188074365-41d3e164-aabd-45cb-ad18-22d5d6e06e2a.png)

gfxutil output:

![Screen Shot 2022-09-02 at 13 46 13](https://user-images.githubusercontent.com/39668756/188075577-68c62315-991f-4e4f-9adf-84b469c8f16e.png)

USBMap:

![Screen Shot 2022-07-25 at 09 50 33](https://user-images.githubusercontent.com/39668756/188075843-e473a61f-a012-400e-812f-fce459ab7f79.png)
![Screen Shot 2022-07-25 at 09 59 53](https://user-images.githubusercontent.com/39668756/188075849-7d5e98cc-9804-47a6-945b-9dddcc32e0a5.png)

#THE FACT I REALIZED: Clover CAN USE NVRAM FROM OC LEFT, BUT OC CAN’T. SO WHEN SWITCH BOOT TO OC FROM Clover, need resetNVRAM WITH THIS CHANGE IN CONFIG.PLIST:
[applesecureboot.html](https://dortania.github.io/OpenCore-Post-Install/universal/security/applesecureboot.html#special-notes-with-securebootmodel)

REMEMBER This will disable macOS's APFS snapshots too
![NVRAM OC FORCE WHEN BOOT CLOVER](https://user-images.githubusercontent.com/39668756/188077118-338536db-3fff-444e-a436-2da028fab9ce.png)

Working:
full QE/CI with HD5500 graphics OOB
DP + HDMI output OOB
full audio, including jack microphone input and headset output (with AppleALC kext & layout-id 20)
full CPU power management, including Turbo boost to 2.9GHz (with CPU-specific generated SSDT)
system sleeps Ok through lid closure, power button, Fn-F1, Apple menu->Sleep and energy savings settings with hibernation mode set to 0 (sleep to RAM) and /var/vm/sleepimage file deleted. Wakes Ok through lid opening and power button
wireless & bluetooth with any compatible card/USB dongle
battery management and monitoring (with ACPIBatteryManager kext)
SD card reader (with DSDT patch for compatibility with Apple's default Broadcom device 14e4:16bc)
integrated webcam OOB
keyboard backlight control OOB (for backlit models)
USB3.0 ports
 
Not Working:
N/A
 
Not tested:
HDMI audio (with AppleIntelBDWGraphicsFB kext patch)
