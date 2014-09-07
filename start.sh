#!/bin/bash
#Vim setup for manugarri

#install Pathogen
echo 'installing pathogen'
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#Install nerdtree
echo 'installing nerdtree'
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

#install ctrlp
echo 'installing ctrlp'
cd ~/.vim
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim

#install syntastic
cd ~/.vim/bundle && \
git clone https://github.com/scrooloose/syntastic.git

#install autocomplete
echo 'Installing autocomplete'
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
cd

