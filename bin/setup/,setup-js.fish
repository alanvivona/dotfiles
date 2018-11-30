# nodejs & npm
sudo snap install node --channel=10/stable --classic

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt -qq update; and sudo apt -y install yarn

# sass global install
sudo npm install -g sass
