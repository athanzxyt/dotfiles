#!/usr/bin/env bash
set -euo pipefail

# macOS-only bootstrap for this chezmoi repo:
# - install Oh My Zsh (if missing)
# - install Brewfile apps via brew bundle
# - install global npm tooling (commitwiz)

if [ "$(uname -s)" != "Darwin" ]; then
  exit 0
fi

# Homebrew must exist (install it manually once on a new machine)
if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Install Homebrew first, then re-run 'chezmoi apply'."
  exit 0
fi

# Ensure brew-installed tools are on PATH for this script
eval "$(brew shellenv)"

# Install Oh My Zsh if not already installed
if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  if ! command -v zsh >/dev/null 2>&1; then
    echo "zsh not found. Install zsh first."
    exit 1
  fi

  echo "Installing Oh My Zsh..."
  RUNZSH=no CHSH=no KEEP_ZSHRC=yes sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "Oh My Zsh installed."
else
  echo "Oh My Zsh already installed."
fi

# Run brew bundle from the chezmoi source directory
cd "$(chezmoi source-path)"

if [ ! -f Brewfile ]; then
  echo "Brewfile not found in chezmoi source directory."
  exit 0
fi

brew bundle --file Brewfile

# Install global npm tooling
if command -v npm >/dev/null 2>&1; then
  if command -v commitwiz >/dev/null 2>&1; then
    echo "commitwiz already installed."
  else
    npm i -g commitwiz
  fi
else
  echo "npm not found. Skipping global npm tooling installs."
fi

