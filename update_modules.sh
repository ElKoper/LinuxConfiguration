#! /bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

# Remove old files
rm -rf ./source/.vim/bundle/nerdtree/
rm -rf ./source/.vim/bundle/tagbar/
rm -rf ./source/.vim/bundle/vim-airline/
rm -rf ./source/.vim/bundle/vim-colors-solarized/
rm -rf ./source/.vim/bundle/vim-fugitive/
rm -rf ./source/.vim/bundle/vim-gitgutter/

# Update submodules
git submodule update --init --recursive

# Remove unneded repos files
rm -rf ./.git/modules
rm `find . -name .git -type f`

popd
