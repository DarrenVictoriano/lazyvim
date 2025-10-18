# LazyVim

My personal LazyVim config.

## > [!WARNING]

Backup your existing Neovim config first if your have one already.

```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

## Installation

1. Install Neovim and GNU Stow

On MacOS:

```bash
brew install neovim
brew install stow
```

On Linux:

```bash
sudo pacman -S neovim
sudo pacman -S stow
```

2. clone this repo

```bash
git clone git@github.com:DarrenVictoriano/lazyvim.git lazyvim
```

3. symlink it using GNU Stow

```bash
stow -t ~ lazyvim
```
