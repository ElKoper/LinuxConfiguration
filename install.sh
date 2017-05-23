#! /bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

# TODO: Option to replace anyway
echo "Existing files will not be replaced."

# vim configuration
[ -f ~/.vimrc ] && echo "File ~/.vimrc exists." || ln -s ./source/.vimrc ~/.vimrc
[ -d ~/.vim ] && echo "Directory ~/.vim exists." || ln -sd ./source/.vim ~/.vim

# bash configuration
[ -f ~/.bashrc ] && echo "File ~/.bashrc exists." || ln -s ./source/.bashrc ~/.bashrc
[ -d ~/.bashrc_other ] && echo "Directory ~/.bashrc_other exists." || ln -sd ./source/.bashrc_other ~/.bashrc_other

# update submodules
./update_modules.sh

popd
