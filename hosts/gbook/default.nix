{self, ...}: {
  imports = [
    ./configuration.nix
    ./hardware-configuration.nix
    ./set.nix

    ../../modules/alias.nix
    ../../modules/bash.nix
    ../../modules/bluetooth.nix
    ../../modules/dconf.nix
    ../../modules/docker.nix
    ../../modules/firewall.nix
    ../../modules/fonts.nix
    ../../modules/home-manager.nix
    ../../modules/linger.nix
    ../../modules/nix
    ../../modules/virt-manager.nix
    ../../modules/wayland.nix
    ../../modules/wireshark.nix
    ../../modules/zsh.nix
  ];
}
