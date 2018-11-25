#!/usr/bin/fish

echo "=====--- Copying config files ---====="
cd
cp -pr ~/dotfiles/bin/ ~/bin
cp -pr ~/dotfiles/homedir/. ~/

echo "=====--- Upgrade ---====="
~/dotfiles/setup/,setup-upgrade.fish

echo "=====--- Git ---====="
~/dotfiles/setup/,setup-git.fish

echo "=====--- Basic stuff ---====="
~/dotfiles/setup/,setup-basic.fish

echo "=====--- VirtualBox ---====="
~/dotfiles/setup/,setup-virtualbox.fish

echo "=====--- Vagrant ---====="
~/dotfiles/setup/,setup-vagrant.fish

echo "=====--- Docker ---====="
~/dotfiles/setup/,setup-docker.fish

echo "=====--- Fish Config ---====="
~/dotfiles/setup/,setup-fish-config.fish

echo "=====--- Tmux ---====="
~/dotfiles/setup/,setup-tmux.fish

# echo "=====--- Desktop Env ---====="
~/dotfiles/setup/# ,setup-i3.fish

echo "=====--- Javascript Env ---====="
~/dotfiles/setup/,setup-js.fish

echo "=====--- Python Env ---====="
~/dotfiles/setup/,setup-python.fish

echo "=====--- Radare2 ---====="
~/dotfiles/setup/,setup-r2.fish

echo "=====--- Misc Stuff ---====="
~/dotfiles/setup/,setup-misc.fish

echo "=====--- Multimedia ---====="
~/dotfiles/setup/,setup-multimedia.fish

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

