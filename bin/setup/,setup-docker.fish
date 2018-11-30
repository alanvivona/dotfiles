sudo apt-get -y install docker.io

# Docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-(uname -s)-(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# sudo docker pull ubuntu
# sudo docker pull nginx
# sudo docker pull mysql
# sudo docker pull node
# sudo docker pull golang
# sudo docker pull python
# sudo docker pull alanvivona/r2
# sudo docker pull alanvivona/xori
# sudo docker pull alanvivona/rappel-docker
# sudo docker pull kalilinux/kali-linux-docker
# sudo docker pull dominicbreuker/stego-toolkit