{pkgs, ...}: {
  imports = [
    ./hyprland
    ./hyprlock.nix
    ./hypridle.nix
  ];
}
