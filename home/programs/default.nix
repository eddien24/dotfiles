{pkgs, ...}: {
  imports = [
    ./firefox.nix
    ./diagnostics.nix
    ./unfree.nix
  ];
}
