#!/usr/bin/env zsh

# Links up the dotfiles to the home directory

sources=(
	".zshrc"
	".vimrc"
)

current_directory=$(pwd)

for source in $sources; do
	ln -s $current_directory/$source ~/$source
done