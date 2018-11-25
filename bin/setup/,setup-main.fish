#!/usr/bin/fish

echo "=====--- Copying config files ---====="
cd
cp -pr ./bin ~/bin
cp -pr ./homedir/. ~/

echo "=====--- Upgrade ---====="
,setup-upgrade.fish

echo "=====--- Git ---====="
,setup-git.fish

echo "=====--- Basic stuff ---====="
,setup-basic.fish

echo "=====--- VirtualBox ---====="
,setup-virtualbox.fish

echo "=====--- Vagrant ---====="
,setup-vagrant.fish

echo "=====--- Docker ---====="
,setup-docker.fish

echo "=====--- Fish Config ---====="
,setup-fish-config.fish

echo "=====--- Tmux ---====="
,setup-tmux.fish

# echo "=====--- Desktop Env ---====="
# ,setup-i3.fish

echo "=====--- Javascript Env ---====="
,setup-js.fish

echo "=====--- Python Env ---====="
,setup-python.fish

echo "=====--- Radare2 ---====="
,setup-r2.fish

echo "=====--- Misc Stuff ---====="
,setup-misc.fish

echo "=====--- Multimedia ---====="
,setup-multimedia.fish

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

