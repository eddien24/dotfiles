# DOTFILES

## Requirements
- Git
- GNU Stow

## Installation
```
git clone git@github.com:eddien24/dotfiles.git ~/.dotfiles
```

## Applications

### Neovim
If package manager is not up to date (need at least v10.0): 
[Build from source](https://github.com/neovim/neovim/blob/master/BUILD.md)

Lazy should bootstrap everything else.

### Tmux
- If package manager is not up to date (need at least v3.1):
[Build from source](https://github.com/tmux/tmux?tab=readme-ov-file#welcome-to-tmux)
- Building dependencies: `libevent` and `ncurses` via package manager
    (might be called `libevent_dev` and `ncurses_dev`)

#### TPM
``` 
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```
Use `<prefix>-I` when inside of `tmux` to install packages.
