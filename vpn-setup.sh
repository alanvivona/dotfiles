# TODO: 
# - Add DNS/IP leak
# - Add some logging / comments
# - Make this part of a tmuxinator config

if sudo apt update; and sudo apt upgrade
    sudo apt install openvpn resolvconf
    wget https://www.blackvpn.com/wp-content/uploads/linux/blackvpn_linux.zip
    
    if ls ./blackvpn_linux
        rm -rf ./blackvpn_linux
    end

    if echo "a5a59d950bb4a7b8025ec9467cc1dceaa47ac9ea blackvpn_linux.zip" | sha1sum -c --
        unzip blackvpn_linux.zip
        rm blackvpn_linux.zip
        cd blackvpn_linux
        sudo openvpn Privacy-Luxembourg.conf
    end
end


