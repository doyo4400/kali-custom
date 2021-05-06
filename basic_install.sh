#!/bin/bash

#last update 23/04/2021

#variables
$screen_resolution = 1440×900
$hostname = Kalisse


#set azerty keyboard
setxkbmap fr

#set persistant azerty keyboard
sudo sed -i "s/us/fr/g" /etc/default/keyboard

#change screen resolution
xrandr -s $screen_resolution

echo $hostname > /etc/hostname

echo "For expand the top task bar, go on > panel > measurements > row size"

#update and upgrade
apt update && apt upgrade -y

# Install virtual box addons
apt install -y virtualbox-guest-x11


echo "Do you wan't to restart computer ? (You must do this for finish install of VirtualBox addons !)"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) reboot -f; break;;
        No ) exit;;
    esac
done




