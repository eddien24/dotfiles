# My Dotfiles

NixOS dotfiles for my laptop and WSL2.

- Neovim configuration at [eddien24/nvim](https://github.com/eddien24/nvim)
- Wallpapers at [eddien24/wallpapers](https://github.com/eddien24/wallpapers)
- Need to manually add `tpm` to install packages. Use `<prefix>-I` when inside
  of `tmux` to install packages.

```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

- To `cargo install`, run inside of a `nix-shell`

```bash
nix-shell -p pkg-config openssl
```

- Crontab scripts

```bash
my-cron | sudo crontab -l
```
