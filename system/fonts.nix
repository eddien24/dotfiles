{pkgs, ...}: {
  fonts.packages = with pkgs; [
    (nerdfonts.override {fonts = ["FiraMono" "JetBrainsMono"];})
  ];
  fonts.fontconfig.defaultFonts.monospace = ["FiraMono"];
}
