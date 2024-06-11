{pkgs, ...}: {
  imports = [
    ./bat.nix
    ./btop
    ./cli.nix
    ./compilers.nix
    ./git.nix
    ./neovim.nix
    ./starship.nix
    ./tmux.nix
    ./zsh.nix
  ];
}
