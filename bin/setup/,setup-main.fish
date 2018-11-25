#!/usr/bin/fish

echo "=====--- Copying config files ---====="
cd
cp -pr ~/dotfiles/bin/ ~/bin
cp -pr ~/dotfiles/homedir/. ~/

echo "=====--- Upgrade ---====="
fish ~/dotfiles/bin/setup/,setup-upgrade.fish

echo "=====--- Git ---====="
fish ~/dotfiles/bin/setup/,setup-git.fish

echo "=====--- Basic stuff ---====="
fish ~/dotfiles/bin/setup/,setup-basic.fish

echo "=====--- VirtualBox ---====="
fish ~/dotfiles/bin/setup/,setup-virtualbox.fish

echo "=====--- Vagrant ---====="
fish ~/dotfiles/bin/setup/,setup-vagrant.fish

echo "=====--- Docker ---====="
fish ~/dotfiles/bin/setup/,setup-docker.fish

echo "=====--- Fish Config ---====="
fish ~/dotfiles/bin/setup/,setup-fish-config.fish

echo "=====--- Tmux ---====="
fish ~/dotfiles/bin/setup/,setup-tmux.fish

# echo "=====--- Desktop Env ---====="
~/dotfiles/setup/# ,setup-i3.fish

echo "=====--- Javascript Env ---====="
fish ~/dotfiles/bin/setup/,setup-js.fish

echo "=====--- Python Env ---====="
fish ~/dotfiles/bin/setup/,setup-python.fish

echo "=====--- Radare2 ---====="
fish ~/dotfiles/bin/setup/,setup-r2.fish

echo "=====--- Misc Stuff ---====="
fish ~/dotfiles/bin/setup/,setup-misc.fish

echo "=====--- Multimedia ---====="
fish ~/dotfiles/bin/setup/,setup-multimedia.fish

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

