#!/bin/bash


#for bluetooth
sudo systemctl start bluetooth.service
# disable one equipement :
hcitool_connect_result=$(hcitool dev | tail -n +2 | cut -c7-)
sudo hcitool lealrm $mac_addr
sudo systemctl stop bluetooth.service

#for wifi :
nmcli --terse connection show | cut -d : -f 1 | while read name; do nmcli connection delete "$name"; done
nmcli radio wifi off
