{pkgs, ...}: {
  imports = [
    ./gtk.nix
    ./hypr
    ./kitty.nix
    ./mako.nix
    ./notes.nix
    ./rofi
    ./tools.nix
    ./waybar
  ];
}
