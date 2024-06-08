{pkgs, ...}: {
  home.packages = with pkgs; [
    discord
    spotify
    zoom-us
  ];
}
