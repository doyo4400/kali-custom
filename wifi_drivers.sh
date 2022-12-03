/bin/bash

#install driver for intel wi-fi 6 AX201
# test on Kali 2022.2

# verify /etc/apt/sources.list if non-free pack is allow.

apt update
apt install firmware-iwlwifi
modprobe -r iwlwifi ; modprobe iwlwifi

echo "$(tput setaf 1) $(tput setab 3) It's time to configure your WI-FI connection ! "


# wifi blocking debug
#sudo rfkill unblock wifi ; sudo rfkill unblock all
#sudo rfkill list
#sudo ifconfig wlan0 up
