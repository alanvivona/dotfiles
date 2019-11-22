#!/usr/bin/env fish

echo "Installing General dependencies..."
sudo apt-get -y install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential binutils automake wget libtool make gcc flex bison openssl libmagic-dev libssl-dev libjansson-dev git
python3 -m pip install --upgrade pip

echo "Installing pwntools (python3 version)..."
python3 -m pip install --upgrade git+https://github.com/Gallopsled/pwntools.git@dev3

echo "Installing Wine..."
sudo apt-get -y install wine

echo "Installing Tracing tools..."
sudo apt-get -y install ltrace strace

echo "Installing Hexeditors..."
sudo apt-get -y install bless hexdump xxd

echo "Installing Assemblers..."
sudo apt-get -y install nasm masm gas

echo "Installing Assembler repl..."
sudo docker pull alanvivona/rappel-docker

echo "Installing Metasploit..."
cd
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall; and chmod 755 msfinstall; and ./msfinstall

echo "Installing Radare2..."
git clone https://github.com/radare/radare2.git
sudo sh radare2/sys/install.sh
r2pm init
r2pm update
r2pm install r2frida r4ge r2ghidra-dec
pip3 install r2pipe --user

echo "Installing Network utils..."
sudo apt-get -y install wireshark tshark tcpdump nmap
pip3 install matplotlib scapy[complete] --user

echo "Installing Yara..."
cd
wget https://github.com/VirusTotal/yara/archive/v3.11.0.tar.gz -O yara.tar.gz && tar -zxf yara.tar.gz
cd ./yara-3.11.0
./bootstrap.sh && ./configure --enable-magic --with-crypto && make && make check && sudo make install && make check
echo "Installing Fix lib not found after yara default isntall..."
sh -c 'echo "/usr/local/lib" >> /etc/ld.so.conf' && ldconfig
pip3 install yara-python --user

echo "Installing Dynamic Instrumentation (frida)..."
pip3 install frida-tools --user

echo "Installing Symbolic execution (angr)..."
pip3 install angr --user
sudo docker pull angr/angr

echo "Installing Extraction utils..."
binwalk
exiftool
wget https://www.cgsecurity.org/testdisk-7.2-WIP.linux26-x86_64.tar.bz2
tar xvf testdisk-7.2-WIP.linux26-x86_64.tar.bz2

echo "Installing Java Decompiler (CFR)..."
sudo apt-get -y install default-jdk default-jre
cd
wget https://www.benf.org/other/cfr/cfr-0.148.jar
# test it works
java -jar cfr-0.148.jar --help

echo "Installing Debug utils..."
gdb
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
echo "Installing check for pip packages to download, this is somewhat tricky..."
apt-get update && apt-get -y install \
pip3 install capstone unicorn keystone-engine ropper --user
