#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
vim +PluginInstall +qall
cp -pr .byobu ~/
echo "test -s ~/.alias && . ~/.alias || true" >> ~/.bashrc
