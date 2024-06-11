{self, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./configuration.nix
    ./set.nix

    ../../modules/alias.nix
    ../../modules/home-manager.nix
    ../../modules/wayland.nix
    ../../modules/zsh.nix
    ../../system
  ];
}
