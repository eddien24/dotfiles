{pkgs, ...}: {
  imports = [
    ./auto.nix
    ./pkg.nix
    ./set.nix
  ];
}
