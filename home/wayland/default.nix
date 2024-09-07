{pkgs, ...}: {
  imports = [
    ./browsers.nix
    ./gtk.nix
    ./hypr
    ./kitty.nix
    ./mako.nix
    ./notes.nix
    ./rofi
    ./tools.nix
    ./unfree.nix
    ./waybar
  ];
}
