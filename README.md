Install intel usb driver `iSocUSB-Driver-Setup-1.0.4.exe`

Install xFSTK downloader `xfstk-downloader-setup-1.5.1.exe`

Change MODE (Bottom part of app) to `CLVP A0/B0/B1`

```
Options
L-----Modify Settings
      L-----Download Options
            +-----Enable GP Flag Override (CHECKBOX) > Check
            +-----GP Flag Override Value > 0x80000045
            +-----Include Softfuse File (CHECKBOX) > Check
            +-----Include Softfuse File > soft-fuse.bin
            L-----Device Detection Timeout > 120

Firmware
+-----FW DnX > sec-dnx_fwr.bin
L-----IFWI > sec-ifwi-prod.bin

Operating System
+-----OS DnX > sec-dnx_osr.bin
L-----OS Image > droidboot.img.POS_sign.bin
```

Press `Begin Download`

Power off the device

Press `Volume down` and plug usb cable

Power off the device again

[Download](https://drive.google.com/file/d/1XmkSyHN-qGrv1j1tMecVLChg60APoKfZ/view?usp=sharing) and Extract `WW-ZC451CG-4.11.40.55-rel-user-20150125-184047-signed.zip`

Go to extracted directory

Press `Shift + Right Click`

Select `Open Powershell Window Here`

Type `cmd` enter

Press `Volume Up + Power Button` and wait for fastboot

After fastboot loaded, plug the usb cable

Type `fastboot devices` to verify the device is present

Type the command below one after another

```
fastboot oem erase_osip_header
fastboot oem erase_token
fastboot oem start_partitioning
fastboot flash /tmp/partition.tbl partition.tbl
fastboot oem partition /tmp/partition.tbl
fastboot erase system
fastboot erase cache
fastboot erase data
fastboot erase APD
fastboot erase ADF
fastboot oem wipe splashscreen
fastboot oem stop_partitioning
fastboot flash fastboot droidboot_sign.bin
fastboot flash token PROD_BOM_Full.bin
fastboot flash ifwi ifwi-prod.bin
fastboot flash splashscreen splash_sign.bin
fastboot flash boot boot_sign.bin
fastboot flash recovery recovery_sign.bin
fastboot flash APD APD.img
fastboot flash system system.img
fastboot reboot 
```

Wait for device to boot up

For Hardcore users

<https://sourceforge.net/projects/xfstk/>

`sudo apt install android-tools-adb android-tools-fastboot`

> This is collection of zenfone c Z007 tools and firmware obtained from public domain. All rights belong to respectable owner, in this case Intel Corporation and AsusTek Computer Inc