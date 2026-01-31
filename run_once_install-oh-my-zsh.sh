#!/usr/bin/env bash
set -euo pipefail

# Install Oh My Zsh if not already installed
if [ -d "${HOME}/.oh-my-zsh" ]; then
    echo "Oh My Zsh already installed."
    exit 0
fi

if ! command -v zsh >/dev/null 2>&1; then
    echo "zsh not found. Install zsh first."
    exit 1
fi

echo "Installing Oh My Zsh..."
RUNZSH=no CHSH=no KEEP_ZSHRC=yes sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Oh My Zsh installed."
