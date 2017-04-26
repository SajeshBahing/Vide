#!/bin/bash

pushd `dirname $0` > /dev/null
directory=`pwd -P`
popd > /dev/null

today=`date +%Y%m%d`

if [ ! -d ~/.vim/bundle/ ]; then
    mkdir ~/.vim/bundle
fi

if [ ! -d ~/.vim/autoload/ ]; then
    mkdir ~/.vim/autoload
fi

apt-get install vim vim-nox vim-gtk vim-gnome vim-athena silversearcher-ag phpmd

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

while IFS='' read -r line || [[ -n "$line" ]]; do

    cd ~/.vim/bundle

    echo "downloading plugins from git repo."

    git clone $line
    
done < "repo"

echo "Backing up system's .vimrc file and creating new one."

if [ ! -d ~/.vim/bak/ ]; then
    mkdir ~/.vim/bak/
fi

cd $directory

if [ ! -f .vimrc ]; then
    echo "Please update git repo completely, no configuration file is found"i
    exit 1
fi

cp ~/.vimrc ~/.vim/bak/vimrc-$today
cp .vimrc ~/.vimrc 

if [ ! -d extend_vimrc ]; then
    echo "Please update git repo completely, not all configuration file is found"
    exit 1
fi

cp -R extend_vimrc ~/.vim/
