{self, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./configuration.nix
    ./set.nix

    ../../modules/alias.nix
    ../../modules/bash.nix
    ../../modules/fonts.nix
    ../../modules/home-manager.nix
    ../../modules/linger.nix
    ../../modules/nix
    ../../modules/wayland.nix
    ../../modules/zsh.nix
  ];
}
