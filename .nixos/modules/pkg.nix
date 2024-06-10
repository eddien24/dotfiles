{
  config,
  pkgs,
  ...
}: {
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # Mandatory tools
    stow
    unzip
    killall
    trash-cli
    rmtrash
    cron

    starship
    mako
    xdg-desktop-portal-hyprland

    # Programming tools
    gcc
    cmake
    alejandra
    rustup
  ];
}
