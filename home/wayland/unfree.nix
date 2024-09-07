{
  pkgs,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    discord
    spotify
  ];
}
