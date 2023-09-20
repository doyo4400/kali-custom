#!/bin/bash

echo -e '\033[0;31m *********** APT Update & Upgrade ***********\033[m'
apt update && apt full-upgrade -y

#Flatpak
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install gnome-software-plugin-flatpak

echo -e '\033[0;31m *********** Keepass2 ***********\033[m'
apt install keepass2 -y


echo -e '\033[0;31m *********** Firefox Extensions ***********\033[m'
xdg-open https://addons.mozilla.org/fr/firefox/addon/adblock-plus/
xdg-open https://addons.mozilla.org/fr/firefox/addon/noscript/
xdg-open https://addons.mozilla.org/fr/firefox/addon/multi-account-containers/
xdg-open https://addons.mozilla.org/fr/firefox/addon/ghostery/


echo -e '\033[0;31m *********** Install Atom ***********\033[m'
#dependencies
apt install -y git libasound2 libcurl4 libgbm1 libgcrypt20 libgtk-3-0 libnotify4 libnss3 libglib2.0-bin xdg-utils libx11-xcb1 libxcb-dri3-0 libxss1 libxtst6 libxkbfile1
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
apt update
apt install atom -y

echo -e '\033[0;31m *********** Libre Office ***********\033[m'
add-apt-repository ppa:libreoffice/ppa
apt update
apt install libreoffice -y
apt install libreoffice-gnome -y
#IF kde : apt-get install libreoffice-kde
#Extension :
apt install -y libreoffice-l10n-*
apt install -y libreoffice-pdfimport
apt install -y libreoffice-presentation-minimizer
apt install -y libreoffice-presenter-console
apt install -y libreoffice-report-builder-bin

