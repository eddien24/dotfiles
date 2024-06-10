{pkgs, ...}: {
  imports = [
    ./hypr
    ./mako.nix
    ./tools.nix
    ./waybar
  ];
}
