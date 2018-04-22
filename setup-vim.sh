#!/bin/bash

# Small script to easily setup vim using my themes and packages of choice

set -eux

# First off, let's install pathogen to make it easy to install plugins and
# runtime files in their own private directories.

mkdir -p ${HOME}/.vim/autoload ${HOME}/.vim/bundle && \
	curl -LSso ${HOME}/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Copy vimrc to your user home folder
cp vimrc ${HOME}/.vimrc

# Copy bundle packages to vim bundle folder
cp -R bundle/* ${HOME}/.vim/bundle

# Copy all available color themes to color folder
cp -R color/ ${HOME}/.vim/

# Install cscope and ctags on a Debian-based distro
sudo apt install cscope exuberant-ctags
