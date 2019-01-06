#!/usr/bin/env sh

apt-get install 

sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt-get -qq update
sudo apt-get -qq -y install fish

echo "/usr/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
fish ./setup/,setup-main