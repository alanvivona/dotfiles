sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish

echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
