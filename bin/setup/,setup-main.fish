#!/usr/bin/fish

echo "=====--- Copying config files ---====="
cd
cp -pr ~/dotfiles/bin/ ~/bin
cp -pr ~/dotfiles/homedir/. ~/

echo "=====--- Upgrade ---====="
fish ~/dotfiles/setup/,setup-upgrade.fish

echo "=====--- Git ---====="
fish ~/dotfiles/setup/,setup-git.fish

echo "=====--- Basic stuff ---====="
fish ~/dotfiles/setup/,setup-basic.fish

echo "=====--- VirtualBox ---====="
fish ~/dotfiles/setup/,setup-virtualbox.fish

echo "=====--- Vagrant ---====="
fish ~/dotfiles/setup/,setup-vagrant.fish

echo "=====--- Docker ---====="
fish ~/dotfiles/setup/,setup-docker.fish

echo "=====--- Fish Config ---====="
fish ~/dotfiles/setup/,setup-fish-config.fish

echo "=====--- Tmux ---====="
fish ~/dotfiles/setup/,setup-tmux.fish

# echo "=====--- Desktop Env ---====="
~/dotfiles/setup/# ,setup-i3.fish

echo "=====--- Javascript Env ---====="
fish ~/dotfiles/setup/,setup-js.fish

echo "=====--- Python Env ---====="
fish ~/dotfiles/setup/,setup-python.fish

echo "=====--- Radare2 ---====="
fish ~/dotfiles/setup/,setup-r2.fish

echo "=====--- Misc Stuff ---====="
fish ~/dotfiles/setup/,setup-misc.fish

echo "=====--- Multimedia ---====="
fish ~/dotfiles/setup/,setup-multimedia.fish

# Terminal
# sudo apt -y install gnome-terminal
# copy terminal profile!!

echo "=====--- VSCode ---====="
sudo snap install vscode --classic
# Copy vscode configuration, check all plugins are configured

# Go???
# install golang
# configure gopath and shit
# install goland IDE????

