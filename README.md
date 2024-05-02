## Requirements
- Git
- GNU Stow

## Installation

```
cd ~
mv .bashrc bashrc.bak
git clone git@github.com:eddien24/dotfiles.git ~/.dotfiles
cd .dotfiles
stow .
```
If everything works, remove `bashrc.bak`

## Applications

### Neovim
Ensure that the submodule is installed. If not, update submodules 
in `.dotfiles/.config/nvim`
```
git submodule init
git submodule update
```
[Build from source](https://github.com/neovim/neovim/blob/master/BUILD.md)

#### LSP
- clangd: package manager
- rust-analyzer
```
rustup component add rust-analyzer
```

### Tmux
[Build from source](https://github.com/tmux/tmux?tab=readme-ov-file#welcome-to-tmux)
- Building dependencies: `libevent` and `ncurses` via package manager
    (might be called `libevent_dev` and `ncurses_dev`)

#### TPM
``` 
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```
Use `<prefix>-I` when inside of `tmux` to install packages.

### Starship
```
curl -sS https://starship.rs/install.sh | sh
```

### Alacritty
[Build from source](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)

### Zoxide
```
cd ~
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
```

### FZF
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### EZA
```
cargo install eza
```
