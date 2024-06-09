# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  config,
  pkgs,
  ...
}: let
  tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
  theme = "--theme border=magenta;text=cyan;prompt=green;time=red;action=blue;button=yellow;container=black;input=red";
in {
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

  hardware.opengl.enable = true;

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${tuigreet} ${theme} -remember --remember-session --time --cmd hyprland";
        user = "eddie";
      };
    };
  };

  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal"; # Without this errors will spam on screen
    # Without these bootlogs will spam on screen
    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  home-manager.backupFileExtension = ".bak";
  system.stateVersion = "23.11";
}
