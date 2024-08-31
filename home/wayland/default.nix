{pkgs, ...}: {
  imports = [
    ./gtk.nix
    ./hypr
    ./kitty.nix
    ./mako.nix
    ./rofi
    ./tools.nix
    ./waybar
  ];
}
