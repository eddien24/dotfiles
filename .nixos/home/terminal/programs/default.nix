{pkgs, ...}: {
  imports = [
    ./git.nix
    ./cli.nix
  ];
}
