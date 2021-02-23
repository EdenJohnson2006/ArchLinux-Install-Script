#!/bin/sh
#==============================
# ArchLinux-Install-Script 
# Open Source At 
# https://github.com/EdenJohnson2006/ArchLinux-Install-Script
# By EdenJohnson2006
#==============================
echo "判定启动方式中..."
ls /sys/firmware/efi/efivars
if [$? -ne 0 ];then
    echo "BIOS/CSM兼容环境，设置变量为2..."
    BOOT_MODE=2
else
    echo "uEFI环境，设置变量为0..."
    BOOT_MODE=0
fi