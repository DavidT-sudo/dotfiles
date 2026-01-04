#!/bin/bash

# Initialize submodules (downloads p10k)
git submodule update --init --recursive

# 1. Install Oh My Zsh (if not already there)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# 2. Link your config
# Back up existing .zshrc if it exists
if [ -f "$HOME/.zshrc" ]; then
    mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
fi

# Create a symbolic link from the repo to your home dir
ln -s $PWD/.zshrc $HOME/.zshrc

# 3. Link Custom Plugins/Themes (if you have them)
# cp -r $PWD/custom/* $HOME/.oh-my-zsh/custom/
