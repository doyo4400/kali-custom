#!/bin/bash

#url : https://tryhackme.com/room/openvpn

#last update 23/04/2021

echo "download the Ovpn conf"
echo "https://tryhackme.com/access"

$path_ovpn_thm = "/path-to-file/file-name.ovpn"

apt install openvpn

openvpn $path_ovpn_thm

echo "for test the connection, start the room (computer) and try a ping/connection !"