/bin/bash


echo -e '\033[0;31m *********** APT Update & Upgrade ***********\033[m'
apt update && apt upgrade -y


echo -e '\033[0;31m *********** full tools of Kali ***********\033[m'
apt install kali-linux-everything

# Extension for firefox
echo -e '\033[0;31m *********** Firefox Extensions ***********\033[m'
xdg-open https://addons.mozilla.org/fr/firefox/addon/adblock-plus/
xdg-open https://addons.mozilla.org/fr/firefox/addon/noscript/
xdg-open https://addons.mozilla.org/fr/firefox/addon/multi-account-containers/
xdg-open https://addons.mozilla.org/fr/firefox/addon/ghostery/


# install atom
echo -e '\033[0;31m *********** Install Atom ***********\033[m'
#dependencies
apt install git libasound2 libcurl4 libgbm1 libgcrypt20 libgtk-3-0 libnotify4 libnss3 libglib2.0-bin xdg-utils libx11-xcb1 libxcb-dri3-0 libxss1 libxtst6 libxkbfile1
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
apt update
apt install atom


# ClamAV (for principe)
echo -e '\033[0;31m *********** Install ClamAV ***********\033[m'
apt install clamav-daemon -y
apt install clamtk -y
systemctl stop clamav-freshclam
freshclam
#mkdir /var/lib/clamav
systemctl start clamav-freshclam

