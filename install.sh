#!/usr/bin/env bash

# cd to dotfiles
cd $(cd $(dirname "$BASH_SOURCE"); pwd)

# change shell to zsh, if exists
chsh -s $(grep /zsh$ /etc/shells | tail -1)

# copy all to ~
cp -R . ~/
rm -rf ~/.git
rm ~/install.sh