#!/usr/bin/env bash
set -euo pipefail

# Only run on macOS
if [ "$(uname -s)" != "Darwin" ]; then
    exit 0
fi

# Homebrew must exist (install it manually once on a new machine)
if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew not found. Install Homebrew first, then re-run 'chezmoi apply'."
    exit 0
fi

# Run brew bundle from the chezmoi source directory
cd "$(chezmoi source-path)"

if [ ! -f Brewfile ]; then
    echo "Brewfile not found in chezmoi source directory."
    exit 0
fi

brew bundle --file Brewfile
