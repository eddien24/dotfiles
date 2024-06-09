# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix

    ./modules/auto.nix
    ./modules/set.nix
    ./modules/pkg.nix
  ];

  nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  security.pam.services.hyprlock = {};

  hardware.opengl.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  home-manager.backupFileExtension = ".bak";
  system.stateVersion = "23.11";
}
