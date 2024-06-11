{pkgs, ...}: {
  imports = [
    ./cli.nix
    ./compilers.nix
    ./git.nix
    ./neovim.nix
    ./shell/zsh.nix
    ./starship.nix
    ./tmux.nix
  ];
}
