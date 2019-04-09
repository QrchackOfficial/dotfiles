#!/bin/bash

# exit on errors
set -e

# change shell to zsh, if exists
chsh -s $(grep /zsh$ /etc/shells | tail -1)

# copy all to ~
cp -R . ~/
