{
  config,
  pkgs,
  ...
}: let
  unstable =
    import
    (builtins.fetchTarball https://github.com/nixos/nixpkgs/tarball/unstable)
    # reuse the current configuration
    {config = config.nixpkgs.config;};
in {
  # Install firefox.
  programs.firefox.enable = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # Mandatory tools
    vim
    git
    neovim
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
