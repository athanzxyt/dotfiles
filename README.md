# Athan's Dotfiles

Dotfiles managed with [chezmoi](https://www.chezmoi.io/). Package manager: [Homebrew](https://brew.sh/).

---

## Prerequisites

### 1. Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After install, follow the on-screen instructions to add Homebrew to your `PATH` if needed.

### 2. Install GitHub CLI and log in

Required so chezmoi can clone this repo (and for `gh` in general):

```bash
brew install gh
gh auth login
gh auth setup-git
```

### 3. Install chezmoi and apply these dotfiles

```bash
brew install chezmoi
chezmoi init --apply https://github.com/athanzxyt/dotfiles.git
```

### 4. What runs automatically

On the first `chezmoi apply`, chezmoi runs these **once**:

- `run_once_setup.sh`, which:
  - Installs **Oh My Zsh** if missing (with `KEEP_ZSHRC=yes` so your managed `.zshrc` stays)
  - Installs everything in the `Brewfile` via `brew bundle` (e.g. `gh`, `mole`, `tmux`, `htop`, Node, `nvm`, Python, `uv`, Kitty, Spotify, Slack, Aerospace)
  - Installs global npm tooling: `npm i -g commitwiz`

No need to run these scripts yourself.

---

## After setup

- **Re-apply** (e.g. after pulling changes):  
  `chezmoi apply`
- **Edit a file in the repo**:  
  `chezmoi edit <target-file>`
- **See what would change**:  
  `chezmoi diff`

---

## Software I use

- Aerospace
- commitwiz
- chezmoi
- gh
- htop
- Homebrew
- Kitty
- mole
- Node
- nvm
- Oh My Zsh
- Python
- Slack
- Spotify
- tmux
- uv
- zsh
- Notion Calendar
