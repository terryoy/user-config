#!/bin/bash

DIR=`pwd`
HOME=$PWD/home


echo "This script will create basic user config under a clean linux system" 
echo "---init--"
echo "copying files for local usage..."
cp -rv ./basic/* ./home

echo 
echo "---basic setup---"

echo "ln -s home/.vimrc >> ~/.vimrc"
if test -f ~/.vimrc; then
    echo "...already exists"
else
    ln -s $HOME/.vimrc ~/.vimrc
fi

echo "append home/.bashrc >> ~/.bashrc"
line="source $HOME/.bashrc"
grep "$line" ~/.bashrc || echo "$line" >> ~/.bashrc

echo "...done."

echo
echo "---custom setup---"
echo "list of available config:"
find ./custom

echo "Check the config files under $PWD/custom and use them according to your need."

