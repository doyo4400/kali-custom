/bin/bash


echo -e '\033[0;31m *********** APT Update & Upgrade ***********\033[m'
apt update && apt full-upgrade -y


echo -e '\033[0;31m *********** full tools of Kali ***********\033[m'
apt install kali-linux-everything -y


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
