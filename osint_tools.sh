/bin/bash

# Sudo not required

# Osint
echo -e '\033[0;31m *********** Moriarty ***********\033[m'
git clone https://github.com/AzizKpln/Moriarty-Project /usr/share/Moriarty
cd /usr/share/Moriarty
chmod 755 install.sh
bash install.sh

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
