#!/bin/sh

dotfiles_dir="$( cd "$( dirname "$0" )" && pwd )"

# install FiraCode font
fira_code="$dotfiles_dir/FiraCode/ttf/"

if test "$(uname)" = "Darwin" ; then
  # MacOs
  font_dir="$HOME/Library/Fonts"
else
  # Linux
  font_dir="$HOME/.local/share/fonts"
  mkidr -p $font_dir
fi

echo "Copying FiraCode fonts..."
cp -R "$fira_code" "$font_dir"

if which fc-cache >/dev/null 2>&1 ; then
  echo "Resetting font cache, this may take a moment..."
  fc-cache -f "$font_dir"
fi

echo "FiraCode installed to $font_dir"

# install powerline fonts

sh ~/dotfiles/powerline/install.sh

# install oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp "$dotfiles_dir/.zshrc" ~/.zshrc

# install vimrc
cp "$dotfiles_dir/.vim_runtime" ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# install tmux.conf
cp "$dotfiles_dir/.tmux.conf" ~/.tmux.conf
