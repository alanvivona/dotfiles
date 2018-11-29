sudo apt-add-repository -y ppa:fish-shell/release-2
sudo apt-get -q update
sudo apt-get -y -q install fish

echo "/usr/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
fish