# My Dotfiles
Dotfiles for my NixOS laptop :D

## Installation

```
cd ~
mv .bashrc bashrc.bak
git clone --recurse-submodules git@github.com:eddien24/dotfiles.git ~/.dotfiles
cd .dotfiles
stow .
```
If everything works, remove `bashrc.bak`

## NixOS

Manual symlink necessary for `configuration.nix`
```
sudo ln -s ~/.dotfiles/.nixos/configuration.nix /etc/nixos/configuration.nix
```

## Various Notes

- Need to manually add `tpm` to install packages
``` 
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```
Use `<prefix>-I` when inside of `tmux` to install packages.

- To `cargo install`, run inside of a `nix-shell`
```
nix-shell -p pkg-config openssl
```

- For automatic trash removal
```
sudo crontab -l; echo "@daily $(which trash-empty) 7" | sudo crontab -
```
