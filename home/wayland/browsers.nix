{pkgs, ...}: {
  programs.firefox = {
    enable = true;
    configPath = ".mozilla/firefox";
  };
  home.packages = [pkgs.brave];
}
