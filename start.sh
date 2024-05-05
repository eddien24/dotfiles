#!/bin/sh

# Needs Nvim dependencies and Tmux dependencies

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Build Neovim from source (assumes dependencies are installed)
cd ~
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install 

# Build Tmux from source (assumes dependencies are installed)
cd ~
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make

# TPM
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

# Starship
curl -sS https://starship.rs/install.sh | sh

# Zoxide 
cd ~
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# EZA
cargo install eza
