sudo apt -q update; and sudo snap install \
    telegram-desktop\
    discord\
    slack --classic\
    vlc\
    clementine\
    firefox # supercharge firefox with addons

# Chrome official
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt -y -q update; and sudo apt -y install google-chrome-stable