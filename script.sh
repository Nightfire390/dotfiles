#!/bin/bash

echo "Installing packages..."
sudo pacman -S zsh awesome neovim rofi ripgrep lua-language-server pavucontrol brightnessctl acpi

echo "Done."

echo "Copying general configs..."
cp .zshrc $HOME/
cp .tmux.conf $HOME/
cp -r alacritty $HOME/.config/
cp -r rofi $HOME/.local/share/

echo "Done."

# AwesomeWM Setup
echo "Setting up AwesomeWM..."
cp -r awesome $HOME/.config/
cp -r Wallpapers $HOME/Pictures/

git submodule update --init --recursive

echo "Done."

# Neovim Setup
echo "Setting up Neovim..."
cp -r nvim $HOME/.config/

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "Done. Start Neovim and :PackerSync"
