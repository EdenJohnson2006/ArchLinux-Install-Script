#!/bin/sh
#==============================
# ArchLinux-Install-Script 
# Open Source At 
# https://github.com/EdenJohnson2006/ArchLinux-Install-Script
# By EdenJohnson2006
#==============================
echo "Booting Mode Detecting"
ls /sys/firmware/efi/efivars
if [$? -ne 0 ];then
    echo "BIOS/CSM Mode , Setting BOOT_MODE to 2"
    BOOT_MODE=2
else
    echo "uEFI Mode , Setting BOOT_MODE to 0"
    BOOT_MODE=0
fi
clear
echo "ArchLinux Install Script Version 1"
echo "By EdenJohnson"
DISKS=$(fdisk -l | grep -o /dev/sd | wc -l)
if [$DISKS -eq 0];then
    echo "WARNING!!!NO DISK DECECTED!PLEASE CHECK!"
    exit 1