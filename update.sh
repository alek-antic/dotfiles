#!/bin/sh

dotfiles_dir="$( cd "$( dirname "$0" )" && pwd )"

# update vim_runtime

cp ~/.vim_runtime "$dotfiles_dir/.vim_runtime"

# update zshrc

cp ~/.zshrc "$dotfiles_dir/.zshrc"
