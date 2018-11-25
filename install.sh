echo "=== RUNNING AS ==="
whoami
id
echo "=== ========== ==="

# installing general tools
sudo apt-get -y -q update
sudo apt-get -y install tmux tmuxinator wget curl git fish locate nload htop glances slurm unzip vim fonts-hack-ttf jq build-essential file

# pip
sudo apt-get install python3-pip

# nodejs & npm
sudo apt-get -y install nodejs npm
sudo npm install -g tldr vtop

# radare2
git clone https://github.com/radare/radare2.git
sudo sh radare2/sys/install.sh

# changing shell to fish
sudo chsh -s $(which fish) vagrant
