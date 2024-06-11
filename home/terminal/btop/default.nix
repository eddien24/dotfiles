{pkgs, ...}: {
  home.file.".config/btop/themes/rose-pine-moon.theme" = {
    source = ./rose-pine-moon.theme;
  };

  programs.btop = {
    enable = true;
    settings.color_theme = "rose-pine-moon";
  };
}
