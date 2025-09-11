#!/bin/bash

# Install zsh on Arch Linux
sudo pacman -Sy --noconfirm zsh curl

# Make zsh the default shell
echo "Changing default shell to zsh..."
chsh -s "$(command -v zsh)"

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
fi

# Backup and config
if [ -f "$HOME/.zshrc" ]; then
    cp "$HOME/.zshrc" "$HOME/.zshrc.bak"
fi

# Enable Oh My Zsh tmux plugin
# sed -i 's/plugins=(git)/plugins=(git tmux)/' "$HOME/.zshrc"
