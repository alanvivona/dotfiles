FROM kalilinux/kali-linux-docker:latest

RUN apt-get -y -qq update
RUN apt-get -y -qq upgrade

RUN apt-get -y -qq install kali-linux-wireless kali-linux-web kali-linux-pwtools kali-linux-forensic kali-linux-top10

RUN apt-get -y -qq install tmux tmuxinator wget curl

RUN wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add

RUN apt-get -y -qq install python3-software-properties
RUN apt-get -y -qq install software-properties-common
RUN apt-add-repository ppa:fish-shell/release-2
RUN apt-get update
RUN apt-get install fish
RUN chsh -s /usr/local/bin/fish

RUN fish

RUN wget https://github.com/alanvivona/dotfiles/blob/master/tmux-config -o ~/.tmux.conf
RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
RUN tmux source ~/.tmux.conf
