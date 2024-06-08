# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  config,
  pkgs,
  ...
}: {
  imports = [
    /etc/nixos/hardware-configuration.nix
    # <home-manager/nixos>

    ./modules/auto.nix
    ./modules/set.nix
    ./modules/pkg.nix
    ./modules/hypr.nix
  ];

  nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };
  # users.users.eddie.isNormalUser = true;
  # home-manager.users.eddie = {pkgs, ...}: {
  #   programs.bash.enable = true;
  #
  #   # The state version is required and should stay at the version you
  #   # originally installed.
  #   home.stateVersion = "24.05";
  # };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11";
}
