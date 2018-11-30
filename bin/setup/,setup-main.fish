#!/usr/bin/fish

echo "==========================="
echo "=======----- Copying config files -----======="
echo "==========================="
cd
rm -rf ~/bin
cp -pr ~/dotfiles/bin/ ~/bin
cp -pr ~/dotfiles/homedir/. ~/
rm -rf ~/dotfiles

echo "==========================="
echo "=======----- Upgrade -----======="
echo "==========================="
fish ~/bin/setup/,setup-upgrade.fish

echo "==========================="
echo "=======----- Git -----======="
echo "==========================="
fish ~/bin/setup/,setup-git.fish

echo "==========================="
echo "=======----- Basic stuff -----======="
echo "==========================="
fish ~/bin/setup/,setup-basic.fish

echo "==========================="
echo "=======----- VirtualBox -----======="
echo "==========================="
fish ~/bin/setup/,setup-virtualbox.fish

echo "==========================="
echo "=======----- Vagrant -----======="
echo "==========================="
fish ~/bin/setup/,setup-vagrant.fish

echo "==========================="
echo "=======----- Docker -----======="
echo "==========================="
fish ~/bin/setup/,setup-docker.fish

echo "==========================="
echo "=======----- Fish Config -----======="
echo "==========================="
fish ~/bin/setup/,setup-fish-config.fish

echo "==========================="
echo "=======----- Tmux -----======="
echo "==========================="
fish ~/bin/setup/,setup-tmux.fish

# echo "==========================="
# echo "=======----- Desktop Env -----======="
# echo "==========================="

echo "==========================="
echo "=======----- Javascript Env -----======="
echo "==========================="
fish ~/bin/setup/,setup-js.fish

echo "==========================="
echo "=======----- Python Env -----======="
echo "==========================="
fish ~/bin/setup/,setup-python.fish

echo "==========================="
echo "=======----- Radare2 -----======="
echo "==========================="
fish ~/bin/setup/,setup-r2.fish

echo "==========================="
echo "=======----- Misc Stuff -----======="
echo "==========================="
fish ~/bin/setup/,setup-misc.fish

echo "==========================="
echo "=======----- Multimedia -----======="
echo "==========================="
fish ~/bin/setup/,setup-multimedia.fish

# Terminal
# sudo apt-get -qq -y install gnome-terminal
# copy terminal profile!!

echo "==========================="
echo "=======----- VSCode -----======="
echo "==========================="
sudo snap install vscode --classic
# Copy vscode configuration, check all plugins are configured

# Go???
# install golang
# configure gopath and shit
# install goland IDE????

