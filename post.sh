#!/bin/bash
su - salarmgh
mkdir Workspace
cd Workspace
git clone https://github.com/salarmgh/dotfiles
cp -r dotfiles/{.Xresources,.bashrc,.emacs,.gtkrc-2.0,.config,.tmux.conf,.vimrc,.xinitrc}
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
exit
