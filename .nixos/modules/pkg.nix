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
    kitty
    mako
    xdg-desktop-portal-hyprland
    # waybar

    # Programming tools
    gcc
    cmake
    alejandra
    rustup
  ];
}
