#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/itchyny/lightline.vim
git clone https://github.com/jlanzarotta/bufexplorer.git
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/w0ng/vim-hybrid.git
git clone https://github.com/xolox/vim-misc.git
git clone https://github.com/xolox/vim-session.git

mkdir -p ~/.vim/undodir
mkdir -p ~/.vim/tmpdir
