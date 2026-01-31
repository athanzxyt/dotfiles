# Athan's Dotfiles 

My dotfiles are maintained by `chezmoi`. I use Homebrew as my package manager.

## Getting Started

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

```bash
brew install gh
gh auth login
gh auth setup-git

```bash
brew install chezmoi
chezmoi init --apply https://github.com/athanzxyt/dotfiles.git
