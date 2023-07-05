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

# Create .vim/* directories so I don't spend 15 minutes
# trying to understand why Vim is complaining at me
# on a fresh install

vim_root="$HOME/.vim"

mkdir "$vim_root"
mkdir "$vim_root"/backup
mkdir "$vim_root"/swap
mkdir "$vim_root"/undo
