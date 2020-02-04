#!/bin/bash

CURRENT=`pwd`
LINK_HOME=$PWD/home


echo "This script will create basic user config under a clean linux system" 
echo "---init--"
echo "copying files for local usage..."
mkdir ./home
cp -v ./basic/.vimrc ./home
cp -v ./basic/.bashrc ./home

echo 
echo "---basic setup---"

echo "append home/.vimrc >> ~/.vimrc"
touch ~/.vimrc
line_vim="source $LINK_HOME/.vimrc"
grep "$line_vim" ~/.vimrc || echo $line_vim >> ~/.vimrc
#ln -s $LINK_HOME/.vimrc ~/.vimrc

echo "append home/.bashrc >> ~/.bashrc"
line_bash="source $LINK_HOME/.bashrc"
grep "$line_bash" ~/.bashrc || echo $line_bash >> ~/.bashrc

echo "...done."

echo
echo "---custom setup---"
echo "list of available config:"
find ./custom

echo "Check the config files under $CURRENT/custom and use them according to your need."

