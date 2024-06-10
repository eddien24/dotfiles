{pkgs, ...}: {
  imports = [
    ./cli.nix
    ./compilers.nix
    ./git.nix
    ./neovim.nix
    ./starship.nix
    ./tmux.nix
  ];
}
