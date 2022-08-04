#!/bin/bash

#last update 06/05/2021

#install docker 
#Src : https://docs.docker.com/engine/install/debian/
apt update && apt upgrade -y
apt-get remove docker docker-engine docker.io containerd runc
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
	
	
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
	
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y  
apt install docker-compose -y
adduser $USER docker






#For use portainer with ssl, you must install openssl and generate certs.

#Install openssl and generate certs.
$path_to_certs_openssl = /path/to/cert_ssl_portainer

apt-get install openssl
cd $path_to_certs_openssl
openssl genrsa -out portainer.key 2048
openssl ecparam -genkey -name secp384r1 -out portainer.key
openssl req -new -x509 -sha256 -key portainer.key -out portainer.crt -days 3650

#on oublie pas de modifier les chemins de la conf et des certificats

#create portainer
$path_to_portainer_config = /path/to/config

docker run -d -p 4443:9000 --name portainer --restart always -v "/var/run/docker.sock:/var/run/docker.sock" -v $path_to_certs_openssl:/certs -v $path_to_portainer_config:/data portainer/portainer --ssl
