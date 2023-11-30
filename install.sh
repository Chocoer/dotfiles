#!/bin/sh

[ "${SHELL##/*/}" != "zsh" ] && echo 'You might need to change default shell to zsh: `chsh -s /bin/zsh`'

echo "clone dotfiles..."
dir="$HOME/.dotfiles"
if [ ! -d "$dir" ]; then
    mkdir -p $dir
    git clone --depth 1 --recursive https://github.com/Chocoer/dotfiles.git $dir
fi

cd "$dir"

sh etc/symlink-dotfiles.sh