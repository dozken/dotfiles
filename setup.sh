#!/usr/bin/env bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --file=~/.config/homebrew/Brewfile

stow --restow .

rm ~/.zshrc
ln -s ~/.config/zshrc/.zshrc ~/.zshrc
source ~/.zshrc

# xargs brew install < ./homebrew/leaves.txt
tmux source-file ~/.config/tmux/tmux.conf
