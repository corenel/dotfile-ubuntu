#!/usr/bin/env bash

# install essential packages
sudo cp sources.list /etc/apt/sources.list
sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install -y build-essential openssh-server git wget zsh htop vim python3-pip curl cmake autojump python-pip clang ccache pypy tmux polipo

# install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - --no-check-certificate)"
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# copy dotfiles
cp dotfiles/* $HOME
source $HOME/.zshrc

# setup virtualenv
pip3 install --upgrade pip
sudo pip3 install virtualenvwrapper
mkdir .virtualenvs
mkvirtualenv -p python3 py3.5

# install vncserver
# sudo apt-get install -y xfce4 xfce4-goodies tightvncserver
# vncserver -kill :1
# mv $HOME/.vnc/xstartup $HOME/.vnc/xstartup.bak
# cp dotfiles/.vnc/xstartup $HOME/.vnc/
# vncserver


