# enable puppet repository
cd ~
wget -O puppet.deb https://apt.puppetlabs.com/puppet-release-focal.deb
sudo dpkg -i puppet.deb
sudo apt-get -qq update
sudo apt-get -qqy upgrade

# install pkgs
sudo apt-get install -qqy puppetserver puppet-agent git ruby
sudo gem install r10k

source /etc/profile.d/puppet-agent.sh
export PATH=/opt/puppetlabs/bin:$PATH

echo -ne "Puppet server version: "; puppetserver -v
echo -ne "Puppet agent version: " ; puppet agent --version
sudo systemctl start puppetserver

sudo -i
    puppet config set server $(hostname) --section main
    puppet ssl bootstrap

    # r10k config
    mkdir /etc/puppetlabs/r10k
    wget --no-cache -O /etc/puppetlabs/r10k/r10k.yaml https://raw.githubusercontent.com/alanvivona/dotfiles/puppet/r10k.yaml
    r10k deploy environment -t && echo ">>> R10K IS WORKING"

    # test run to see if puppet works
    puppet agent -t --environment puppet && echo ">>> PUPPET IS WORKING"
