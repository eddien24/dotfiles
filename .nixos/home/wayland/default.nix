{pkgs, ...}: {
  imports = [
    ./hypr
    ./tools.nix
    ./waybar
  ];
}
