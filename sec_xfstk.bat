@echo off
xfstk-dldr-solo.exe -v --fwdnx sec-dnx_fwr.bin --fwimage sec-ifwi-prod.bin --gpflags 0x80000045 --softfuse soft_fuse.bin --osdnx sec-dnx_osr.bin --osimage droidboot.img.POS_sign.bin