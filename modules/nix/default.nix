{pkgs, ...}: {
  imports = [
    ./nh.nix
    ./nixpkgs.nix
    ./flakes.nix
  ];
}
