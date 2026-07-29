{pkgs, ...}: {
  imports = [
    ./binds.nix
    ./general.nix
    ./rules.nix
    ./start.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    configType = "lua";
  };

  home.packages = [
    pkgs.xdg-desktop-portal-hyprland
    pkgs.hyprshutdown
  ];
}
