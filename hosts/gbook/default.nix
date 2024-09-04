{self, ...}: {
  imports = [
    ./configuration.nix
    ./hardware-configuration.nix
    ./set.nix

    ../../modules/alias.nix
    ../../modules/bash.nix
    ../../modules/dconf.nix
    ../../modules/fonts.nix
    ../../modules/home-manager.nix
    ../../modules/nix
    ../../modules/wayland.nix
    ../../modules/zsh.nix
  ];
}
