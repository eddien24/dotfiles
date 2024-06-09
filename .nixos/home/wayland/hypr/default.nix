{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    ./hyprland
    ./hyprlock.nix
    ./hypridle.nix
    ./hyprcursor.nix
  ];
}
