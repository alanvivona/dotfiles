

# Keep reading: 
# https://0x00sec.org/t/paranoia-and-a-terminal-part-0x03-tor-hidden-services/1336
# https://0x00sec.org/t/paranoia-and-a-terminal-part-0x01-tmuxinator/1248



echo "deb https://deb.torproject.org/torproject.org bionic main" | sudo tee /etc/apt/sources.list.d/tor.list
sudo apt-get -qq install gnupg2 tor
sudo chown -R (whoami) ~/.gnupg
chmod 700 ~/.gnupg

sudo service tor restart
sudo gpg2 --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89
sudo gpg2 --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
sudo apt-get -qq update
# This doesn't work and I have no idea why
# sudo apt-get install tor deb.torproject.org-keyring
sudo apt-get -qq install tor
sudo service tor stop
tor