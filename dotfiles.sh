#!/bin/bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp "${0%/*}"/.vimrc ~/.vimrc
cp "${0%/*}"/.gvimrc ~/.gvimrc
vim +PluginInstall +qall
cp "${0%/*}"/.alias ~/.alias
cp -pr "${0%/*}"/.byobu ~/
echo "test -s ~/.alias && . ~/.alias || true" >> ~/.bashrc
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'
git config --global alias.unstage 'reset HEAD --'
git config --global core.editor 'vim'
