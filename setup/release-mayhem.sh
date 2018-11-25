sudo apt-get -y update && 
sudo apt-get install git fish && 
mkdir ~/setup && 
cd ~/setup &&
git clone https://github.com/alanvivona/dotfiles.git &&
cd ~/setup/dotfiles/setup
fish ./main.fish

