#! /bin/sh

DIR=$(pwd)

echo "Link tmux configurations"
ln -s $DIR/tmux/.tmux.conf ~/.tmux.conf

#echo "Link vim configurations"

echo "Link zsh configurations"
ln -s $DIR/zsh/.zshrc
