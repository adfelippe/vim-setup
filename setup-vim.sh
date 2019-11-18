#!/bin/bash

# Small script to easily setup vim using my themes and packages of choice

set -eux
# First off, we'll try to install curl as it may not be available
sudo apt install curl
# Let's install pathogen to make it easy to install plugins and
# runtime files in their own private directories.
mkdir -p ${HOME}/.vim/autoload ${HOME}/.vim/bundle && \
	curl -LSso ${HOME}/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# Copy vimrc to your user home folder
cp vimrc ${HOME}/.vimrc
# Copy bundle packages to vim bundle folder
cp -R bundle/* ${HOME}/.vim/bundle
# Copy all available colors themes to color folder
cp -R colors/ ${HOME}/.vim/
# Create tmp folder to store swap and backup files
mkdir ~/.vim/tmp
# Install cscope and ctags on a Debian-based distro
sudo apt install cscope exuberant-ctags
