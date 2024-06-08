{pkgs, ...}: {
  imports = [
    ./binds.nix
    ./general.nix
    ./rules.nix
    ./start.nix
  ];
  wayland.windowManager.hyprland.enable = true;
}
