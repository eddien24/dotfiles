{pkgs, ...}: {
  imports = [
    ./hypr
    ./kitty.nix
    ./mako.nix
    ./rofi
    ./tools.nix
    ./waybar
  ];
}
