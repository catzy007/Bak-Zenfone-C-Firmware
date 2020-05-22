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
            L-----Include Softfuse File > soft-fuse.bin
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

> This is collection of zenfone c Z007 tools and firmware obtained from public domain. All rights belong to respectable owner, in this case Intel Corporation and AsusTek Computer Inc