#!/bin/bash

#last update 23/04/2021


#For usb
echo "do you wan't to test a simple reboot for find the usb key ?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) reboot -f; break;;
        No ) exit;;
    esac
done

echo "find your disk, /dev/sda , sdb , sdc ?"
fdisk -l

echo "Write the path of usb, use this syntax : /dev/sda"
read -r
$disk_path=$REPLY

#create mount point
mkdir /media/usb-drive

mount $disk_path /media/usb-drive/ 


echo "for confirm the action"
echo mount | grep $disk_path 
