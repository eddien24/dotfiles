{
  config,
  pkgs,
  ...
}: let
  unstable =
    import
    (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/nixos-unstable)
    # reuse the current configuration
    {config = config.nixpkgs.config;};
in {
  programs.firefox.enable = true;
  programs.hyprland.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # Mandatory tools
    vim
    git
    unstable.neovim # For v10.0 (switch when 10.0 is stable)
    tmux
    stow
    unzip
    wget

    # Fun CLI things
    starship
    zoxide
    fzf
    eza
    ripgrep
    libnotify

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
