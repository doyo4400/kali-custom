#!/bin/bash

#check if docker is installed

REQUIRED_PKG="docker"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG 

else
	for image_name in `docker_image_name_to_save.txt`; do
   		sudo docker pull $image_name
		sudo docker save -o $image_name.docker $image_name
		sudo docker load -i $image_name.docker
	done

fi









