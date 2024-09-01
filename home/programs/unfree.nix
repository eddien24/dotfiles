{pkgs, ...}: {
  home.packages = with pkgs; [
    brave
    discord
    spotify
    zoom-us
  ];
}
