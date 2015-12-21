#! /bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# TODO: Option to replace anyway
echo "Existing files will not be replaced."

# vim configuration
[ -f ~/.vimrc ] && echo "File ~/.vimrc exists." || ln -s $DIR/source/.vimrc ~/.vimrc
[ -d ~/.vim ] && echo "Directory ~/.vim exists." || ln -sd $DIR/source/.vim ~/.vim

# bash configuration
[ -f ~/.bashrc ] && echo "File ~/.bashrc exists." || ln -s $DIR/source/.bashrc ~/.bashrc
[ -d ~/other ] && echo "Directory ~/other exists." || ln -sd $DIR/source/other ~/other

# update submodules
cd $DIR && git submodule update --init

