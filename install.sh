sudo apt-get -y update
sudo apt-get -y install tmux tmuxinator wget curl git fish locate nload htop glances slurm unzip vim

git clone https://github.com/tmux-plugins/tpm /home/vagrant/.tmux/plugins/tpm
tmux start-server
/home/vagrant/.tmux/plugins/tpm/bin/install_plugins

git clone https://github.com/radare/radare2.git
sudo sh radare2/sys/install.sh

sudo chsh -s $(which fish) vagrant