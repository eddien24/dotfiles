# My Dotfiles
Dotfiles for my NixOS laptop :D

## Installation

```
mv ~/.bashrc ~/bashrc.bak
git clone --recurse-submodules git@github.com:eddien24/dotfiles.git ~/.dotfiles && cd .dotfiles
stow .
```

## NixOS

Manual symlink necessary for `configuration.nix`.
```
sudo mv /etc/nixos/configuration.nix ~/conf.nix.bak
sudo ln -s ~/.dotfiles/.nixos/configuration.nix /etc/nixos/configuration.nix
```

## Various Notes

- Need to manually add `tpm` to install packages. Use `<prefix>-I` when inside of `tmux` to install packages.
``` 
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

- To `cargo install`, run inside of a `nix-shell`
```
nix-shell -p pkg-config openssl
```
