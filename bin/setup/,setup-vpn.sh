# TODO: 
# - Add some logging / comments
# - Make this part of a tmuxinator config

if sudo apt-get -qq update; and sudo apt-get -qq -y upgrade
    sudo apt-get -y -qq install openvpn resolvconf
    cd ~
    wget --https-only https://www.blackvpn.com/wp-content/uploads/linux/blackvpn_linux.zip
    
    if ls ./blackvpn_linux
        rm -rf ./blackvpn_linux
    end

    if echo "a5a59d950bb4a7b8025ec9467cc1dceaa47ac9ea blackvpn_linux.zip" | sha1sum -c --
        unzip blackvpn_linux.zip
        rm blackvpn_linux.zip
        cd blackvpn_linux
        x-www-browser https://check.torproject.org/
        x-www-browser https://www.dnsleaktest.com/
        # curl checkip.amazonaws.com # check ip
        # shodan host (shodan myip)  # check ip verbose
        sudo openvpn Privacy-Luxembourg.conf
    end

end


