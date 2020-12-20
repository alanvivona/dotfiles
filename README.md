# puppet

VM docs link: https://puppet.com/try-puppet/puppet-learning-vm/download

install puppet:

    # enable puppet repository
    cd ~
    wget -O puppet.deb https://apt.puppetlabs.com/puppet-release-focal.deb
    sudo dpkg -i puppet.deb
    sudo apt-get update
    sudo apt-get upgrade

    # install pkgs
    sudo apt-get install puppetserver puppet-agent git ruby
    sudo gem install r10k

    source /etc/profile.d/puppet-agent.sh
    export PATH=/opt/puppetlabs/bin:$PATH
    
    echo -ne "Puppet server version: "; puppetserver -v
    echo -ne "Puppet agent version: " ; puppet agent --version
    sudo systemctl start puppetserver

    sudo -i
    puppet config set server $(hostname) --section main
    puppet ssl bootstrap
    # test run to see if puppet works
    puppet agent -t && echo ">>> PUPPET IS WORKING"

    # r10k config
    mkdir /etc/puppetlabs/r10k
    wget -O /etc/puppetlabs/r10k/r10k.yaml 


    

# dotfiles

cd  
sudo apt-get -qq -y install git  
rm -rf ~/dotfiles ~/bin # for resets only!!!  
git clone https://github.com/alanvivona/dotfiles.git  
sh ./dotfiles/bin/setup/,setup-fish-install.sh  

then run ,setup-main.fish for the default installation  
