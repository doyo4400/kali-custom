#!/bin/bash

# Url : https://fra.windscribe.com/guides/linux

#last update 23/04/2021

apt-get install dirmngr apt-transport-https
apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7
sh -c "echo 'deb https://repo.windscribe.com/debian buster main' > /etc/apt/sources.list.d/windscribe-repo.list"
apt-get update
apt-get install windscribe-cli

echo "for login use : "
echo "windscribe login"

echo "And for connect the vpn, use :"
echo "windscribe connect"