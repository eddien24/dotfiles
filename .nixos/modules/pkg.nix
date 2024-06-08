{
  config,
  pkgs,
  ...
}: let
  unstable =
    import
    # (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/nixos-unstable)
    # reuse the current configuration
    {config = config.nixpkgs.config;};
in {
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # Mandatory tools
    stow
    unzip
    killall
    brightnessctl
    wl-gammarelay-rs
    trash-cli
    rmtrash
    cron

    # Fun CLI things
    libnotify

    # Desktop
    kitty
    mako
    xdg-desktop-portal-hyprland
    wl-clipboard
    grim
    slurp
    waybar
    rofi-wayland
    rofi-power-menu
    swww
    hyprlock
    hypridle
    playerctl

    # Programming tools
    gcc
    cmake
    alejandra
    rustup

    # Miscellaneous
    discord
    spotify
    zoom-us
  ];
}
