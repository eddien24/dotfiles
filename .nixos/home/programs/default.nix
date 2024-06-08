{pkgs, ...}: {
  imports = [
    ./firefox.nix
    ./diagnostics.nix
  ];
}
