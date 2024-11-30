{pkgs, ...}: {
  fonts.packages = with pkgs.nerd-fonts; [
    fira-mono
    jetbrains-mono
  ];
  fonts.fontconfig.defaultFonts.monospace = ["FiraMono"];
}
