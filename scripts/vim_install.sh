#!/bin/bash

make distclean

# Configure vim installation
./configure \
  --with-features=huge \
  --enable-multibyte \
  --enable-rubyinterp=yes \
  --enable-python3interp=yes \
  --with-python3-config-dir=$(python3-config --configdir) \
  --enable-gui=gtk2 \
  --enable-cscope \
  --prefix=/usr/local

# Install
make VIMRUNTIMEDIR=/usr/local/share/vim/vim82
sudo  make install
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim

