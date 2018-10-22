echo "=== RUNNING AS ==="
whoami
id
echo "=== ========== ==="

# installing general tools
sudo apt-get -y update
sudo apt-get -y install tmux tmuxinator wget curl git fish locate nload htop glances slurm unzip vim nodejs 

# linuxbrew
sudo apt-get -y install build-essential file
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# radare2
git clone https://github.com/radare/radare2.git
sudo sh radare2/sys/install.sh

# changing shell to fish
sudo chsh -s $(which fish) vagrant
