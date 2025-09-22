{pkgs, ...}: {
  home.file.".local/share/rofi/themes/rose-pine-moon.rasi" = {
    source = ./rose-pine-moon.rasi;
  };

  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    theme = "rose-pine-moon";
  };
}
