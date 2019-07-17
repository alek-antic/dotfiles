#!/bin/sh

dotfiles_dir="$( cd "$( dirname "$0" )" && pwd )"

# update vim_runtime

cp -R ~/.vim_runtime "$dotfiles_dir/"

# update zshrc

cp ~/.zshrc "$dotfiles_dir/.zshrc"

# update tmux.conf

cp ~/.tmux.conf "$dotfiles_dir/.tmux.conf"
