/bin/bash
echo -e '\033[0;31m *********** Install virtual box ***********\033[m'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- \ | gpg --dearmor \ | sudo tee /usr/share/keyrings/virtualbox-archive-keyring.gpg

echo "deb [arch=amd64 signed-by=/usr/share/keyrings/virtualbox-archive-keyring.gpg] http://download.virtualbox.org/virtualbox/debian buster contrib" \ | sudo tee /etc/apt/sources.list.d/virtualbox.list
apt update
apt install -y dkms
apt install -y virtualbox virtualbox-ext-pack

echo "Download a VM on : https://www.mes-vms.fr/"
