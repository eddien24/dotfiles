{pkgs, ...}: {
  imports = [
    ./cli.nix
    ./git.nix
    ./neovim.nix
    ./starship.nix
  ];
}
