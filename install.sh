#!/usr/bin/env bash
VIMRC_FILE=https://raw.githubusercontent.com/groteck/vim-config/master/vimrc
VIM_PLUGINS_FILE=https://raw.githubusercontent.com/groteck/vim-config/master/bundles.vim

mkdir -p .vim .vim/bundle .vim/backup .vim/swap .vim/cache .vim/undo &&
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&
curl -o ~/.vim/bundles.vim  $VIM_PLUGINS_FILE &&
curl -o ~/.vimrc $VIMRC_FILE &&
mkdir -p ~/.config &&
ln -s ~/.vim ~/.config/nvim &&
ln -s ~/.vimrc ~/.config/nvim/init.vim &&
vim -N -u ~/.vim/bundles.vim +PlugInstall +qall

