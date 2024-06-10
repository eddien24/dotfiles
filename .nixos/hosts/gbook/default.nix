{self, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./configuration.nix
    ./set.nix

    ../../modules/home-manager.nix
    ../../modules/wayland.nix
    ../../system
  ];
}
