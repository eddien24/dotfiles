{pkgs, ...}: {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    theme = ./rose-pine-moon.rasi;
  };
}
