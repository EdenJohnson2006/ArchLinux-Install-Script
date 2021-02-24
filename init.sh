#!/bin/sh
#==============================
# ArchLinux-Install-Script 
# Open Source At 
# https://github.com/EdenJohnson2006/ArchLinux-Install-Script
# By EdenJohnson2006
#==============================
echo "Booting Mode Detecting"
ls /sys/firmware/efi/efivars
if [ $? -ne 0 ];then
    echo "BIOS/CSM Mode , Setting BOOT_MODE to 2"
    BOOT_MODE=2
else
    echo "uEFI Mode , Setting BOOT_MODE to 0"
    BOOT_MODE=0
fi
echo "ArchLinux Install Script Version 1"
echo "By EdenJohnson"
DISKS=$(fdisk -l | grep -o /dev/sd | wc -l)
if [ $DISKS -eq 0 ];then
    echo "WARNING!!!NO DISK DECECTED!PLEASE CHECK!"
    exit 1
elif [ $DISKS -ne 1 ];then
    echo "INFO:There Are More Than 1 Disks Found!"
    fdisk -l | grep /dev/sd
    read -p "You Need to Choose It Below.CAUTION:IT WILL **ERASE ALL YOUR DATA** ON YOUR CHOSEN DISK!" INSTALL_DISK
else
    echo "There is only 1 Disk Found."
    read -p "IN THIS EARLY VERSION,IT WILL **ERASE ALL YOUR DATA** ON YOUR DISK!DO YOU WANT TO CONTINE?(y/n)" CHOOSE