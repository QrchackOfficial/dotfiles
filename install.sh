#!/bin/bash

# exit on errors
set -e

# cd to dotfiles
HERE=$(cd $(dirname "$BASH_SOURCE"); pwd)
cd "$HERE"

# change shell to zsh, if exists
chsh -s $(grep /zsh$ /etc/shells | tail -1)

# copy all to ~
cp -R . ~/
rm -rf ~/.git
rm ~/install.sh