{pkgs, ...}: {
  fonts = {
    packages = with pkgs; [
      nerd-fonts.fira-mono
      nerd-fonts.jetbrains-mono
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
    ];

    enableDefaultPackages = true;

    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = ["FiraMono"];
        sansSerif = ["Noto Sans"];
        serif = ["Noto Serif"];
      };
    };
  };
}
