#! /bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

function update_submodule {
    USER=$1
    PROJECT=$2
    BRANCH=$3

    # Remove old files
    rm -rf ./source/.vim/bundle/${PROJECT}

    # Dowanload new files from github
    wget -O /tmp/${PROJECT}-${BRANCH}.zip \
            https://github.com/${USER}/${PROJECT}/archive/${BRANCH}.zip
    unzip /tmp/${PROJECT}-${BRANCH}.zip -d /tmp
    mv /tmp/${PROJECT}-${BRANCH} ./source/.vim/bundle/${PROJECT}

    # Remove unneded .zip file
    rm /tmp/${PROJECT}-${BRANCH}.zip
}

# Remove files created by old update script
rm -rf .git/modules/

# Update submodules
update_submodule   scrooloose    nerdtree               master
update_submodule   majutsushi    tagbar                 master
update_submodule   bling         vim-airline            master
update_submodule   altercation   vim-colors-solarized   master
update_submodule   tpope         vim-fugitive           master
update_submodule   airblade      vim-gitgutter          master

popd
