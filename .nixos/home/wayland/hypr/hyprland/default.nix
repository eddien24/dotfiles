{pkgs, ...}: {
  imports = [
    # ./binds.nix
    # ./general.nix
    # ./rules.nix
    # ./start.nix
  ];

  wayland.windowManager.hyprland.enable = true;
  # home.file.".config/hypr/hyprland.conf".source = "./config/hyprland.conf";
  home.file."~/.config/hypr" = {
      source = ./config;
      recursive = true;
  };
}
