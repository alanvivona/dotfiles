

sudo apt-get -qq -y install \
    wireshark \
    tshark \ # Use this on tmuxinator?
    tcpdump \
    nmap \
    masscan \
    macchanger \ # Config macchanger?
    lynis \ # Configure lynis?
    sqlmap \
    unix-privesc-check \ # Run this periodically?

    yersinia \ # How the fuck to use this?

    binwalk \
    dc3dd \
    # photorec?


# Beef
cd
sudo apt-get install -qq -y ruby ruby-dev
git clone https://github.com/beefproject/beef
cd beef
sudo ./install
# Tweak configuration : https://github.com/beefproject/beef/wiki/Configuration
# Add beef to PATH
cd

# Searchsploit
cd
git clone https://github.com/offensive-security/exploitdb.git
# Need to add this to PATH : https://github.com/offensive-security/exploitdb

# Metasploit
# FROM : https://github.com/rapid7/metasploit-framework/wiki/Nightly-Installers
cd
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall; \
and chmod 755 msfinstall; and ./msfinstall
# how to update?

# Routersploit
# FROM : https://github.com/threat9/routersploit
cd
sudo apt-get install -y -qq libglib2.0-dev
sudo pip3 install bluepy
git clone https://www.github.com/threat9/routersploit
cd routersploit
sudo pip3 install -r requirements.txt
# python3 rsf.py # Launch routersploit!
cd
# Add to path

# SET (social engineer toolkit)
cd
sudo apt-get -y -qq install \
    apache2 \
    python-requests \
    libapache2-mod-php \
    python-pymssql \
    build-essential \
    python-pexpect \
    python-pefile \
    python-crypto \
    python-openssl
git clone https://github.com/trustedsec/social-engineer-toolkit/
cd social-engineer-toolkit
python setup.py install
cd

# Gobuster
# FROM : https://github.com/OJ/gobuster
cd
git clone https://github.com/OJ/gobuster.git
cd gobuster
go get; and go build
go install
cd
# TODO: This fails, check out why

# Add https://tools.kali.org/web-applications/xsser ?
# Add recon-ng ?
# Add https://github.com/reyammer/shellnoob ?
# Add linux exploit suggester? + config for runnin periodically
# Add wifite : https://github.com/derv82/wifite

# Add tmuxinator with public ip check from shodan
# Add shodan API
# Add rkhunter and the like to run periodically
# Move radare2 setup here
# Add SecLists
# Add dnscheff?
# Add ethercap?
# Add zaproxy
# Add burp?

sudo pip3 install shodan
