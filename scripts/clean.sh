#!/bin/bash
# If you're having a problem or some kinda of an error with a plugin on neovim, run this script
rm -rf ~/.cache/nvim
rm -rf ~/.config/nvim/plugin
rm -rf ~/.local/share/nvim
nvim
echo neovim has been cleaned
