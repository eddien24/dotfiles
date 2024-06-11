{pkgs, ...}: {
  imports = [
    ./firefox.nix
    ./unfree.nix
  ];
}
