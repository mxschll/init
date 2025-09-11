#!/bin/bash

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

ZSHRC_FILE="$HOME/.zshrc"
ZOXIDE_INIT_LINE='eval "$(zoxide init zsh)"'

# Check if the line already exists in .zshrc
if ! grep -qF "$ZOXIDE_INIT_LINE" "$ZSHRC_FILE"; then
  # If it doesn't exist, append an empty line and then the zoxide init line
  echo "" >> "$ZSHRC_FILE"
  echo "$ZOXIDE_INIT_LINE" >> "$ZSHRC_FILE"
fi
