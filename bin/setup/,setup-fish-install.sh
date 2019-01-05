#!/usr/bin/env sh

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get -qq update
sudo apt-get -qq -y install fish

echo "/usr/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
fish
