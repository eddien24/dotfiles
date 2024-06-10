# My Dotfiles
Dotfiles for my NixOS laptop :D

## Installation

```bash
mv ~/.bashrc ~/bashrc.bak
git clone --recurse-submodules git@github.com:eddien24/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
stow .
```

## Various Notes

- Need to manually add `tpm` to install packages. Use `<prefix>-I` when inside of `tmux` to install packages.
```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

- To `cargo install`, run inside of a `nix-shell`
```bash
nix-shell -p pkg-config openssl
```

- For automatic trash removal
```bash
sudo crontab -l; echo "@daily $(which trash-empty) 7" | sudo crontab -
```
