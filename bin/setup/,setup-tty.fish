# Alacritty
cd
curl https://sh.rustup.rs -sSf | sh -s -- -y # this installs rust stable
sudo apt-get -y -qq install cargo cmake libfreetype6-dev libfontconfig1-dev xclip
git clone https://github.com/jwilm/alacritty.git
cd alacritty
cargo install cargo-deb
cargo deb --install
sudo update-alternatives --set x-terminal-emulator /usr/bin/alacritty
sudo cp alacritty-completions.fish $__fish_datadir/vendor_completions.d/alacritty.fish
cd

# look for config files?


