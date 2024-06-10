{pkgs, ...}: {
  imports = [
    ./hypr
    ./kitty.nix
    ./mako.nix
    ./tools.nix
    ./waybar
  ];
}
