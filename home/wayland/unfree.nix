{
  pkgs,
  lib,
  ...
}: {
  home.packages = with pkgs; [
    discord
    zoom-us
  ];
}
