# LazyVim

My personal LazyVim config.

## Installation

Setup:
backup your exsiting Neovim config:

```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

1. clone this repo

```bash
git clone git@github.com:DarrenVictoriano/lazyvim.git lazyvim
```

2. symlink it using GNU Stow

```bash
stow -t ~ lazyvim
```
