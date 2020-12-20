# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/disco64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "./", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    apt-get -y update
    apt-get -y upgrade
    
    apt-get -y isntall wget curl git fish locate nload htop glances slurm unzip vim fonts-hack-ttf jq build-essential file
    
    apt-get -y install python3-pip
    apt-get -y -qq install nodejs npm
    npm install -g tldr vtop
    
    apt-get -y install tmux
    cd
    wget https://raw.githubusercontent.com/alanvivona/dotfiles/master/homedir/.tmux.conf
    
    apt-get -y install gdb
    cd .gdbinit.d
    wget https://github.com/alanvivona/dotfiles/blob/master/homedir/.gdbinit.d/intel

    # install GEF dependencies
    cd 
    pip3 install capstone unicorn keystone-engine ropper
    pip2 install capstone unicorn keystone-engine ropper
    wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
    wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef-extras.sh | sh
    cd .gdbinit.d
    echo "tmux-setup" > tmux-setup

    # radare2
    git clone https://github.com/radare/radare2.git
    sh radare2/sys/install.sh
    cd
    wget https://raw.githubusercontent.com/alanvivona/dotfiles/master/homedir/.radare2rc
    # get r2dec
    # get r2pipe
    
  SHELL
end
