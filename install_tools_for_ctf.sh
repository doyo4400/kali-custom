/bin/bash


echo -e '\033[0;31m *********** APT Update & Upgrade ***********\033[m'
apt update && apt upgrade -y
apt full-upgrade -y


echo -e '\033[0;31m *********** full tools of Kali ***********\033[m'
apt install kali-linux-everything -y


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


## SEC tools

# ClamAV (for principe)
echo -e '\033[0;31m *********** Install ClamAV ***********\033[m'
apt install clamav-daemon -y
apt install clamtk -y
systemctl stop clamav-freshclam
freshclam
mkdir /var/lib/clamav
systemctl start clamav-freshclam


# Ossec (for bot)
echo -e '\033[0;31m *********** Install OSSEC ***********\033[m'
echo "For find last version of OSSEC : https://www.ossec.net/download-ossec/"
#wget -O /tmp/ossec.tar.gz https://github.com/ossec/ossec-hids/archive/3.7.0.tar.gz
mkdir /tmp/ossec_install
tar -xzf /tmp/ossec.tar.gz -C /tmp/ossec_install --strip-components=1

apt install libz-dev libssl-dev libpcre2-dev build-essential libsystemd-dev
chmod +x /tmp/ossec_install/install.sh
echo "fr > enter > local > enter > n > o > o > n"
/bin/bash /tmp/ossec_install/install.sh

/var/ossec/bin/ossec-control start
echo "modif conf : /var/ossec/etc/ossec.conf"

echo "For view log : tail -f /var/ossec/logs/alerts/alerts.log"


# For CTF

# Stegano
echo -e '\033[0;31m *********** AperiSolve ***********\033[m'
git clone https://github.com/Zeecka/AperiSolve/ /usr/share/aperisolv

echo -e '\033[0;31m *********** Spectrology ***********\033[m'
git clone https://github.com/solusipse/spectrology /usr/share/spectrology
ln -s /usr/share/spectrology/ /usr/bin


#forensic
echo -e '\033[0;31m *********** Foremost ***********\033[m'
apt install foremost -y


# Osint
echo -e '\033[0;31m *********** Daprofiler ***********\033[m'
git clone https://github.com/TheRealDalunacrobate/DaProfiler.git /usr/share/DaProfiler
cd /usr/share/DaProfiler
pip install -r requirements.txt

echo -e '\033[0;31m *********** Holele ***********\033[m'
git clone https://github.com/megadose/holehe.git /usr/share/holele
cd /usr/share/holele
python3 setup.py install

echo -e '\033[0;31m *********** Sherlock ***********\033[m'
git clone https://github.com/sherlock-project/sherlock.git /usr/share/sherlock
cd /usr/share/sherlock
python3 -m pip install -r requirements.txt

echo -e '\033[0;31m *********** Moriarty ***********\033[m'

git clone https://github.com/AzizKpln/Moriarty-Project /usr/share/Moriarty
cd /usr/share/Moriarty
chmod 755 install.sh
bash install.sh
