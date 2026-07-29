{pkgs, ...}: {
  home.packages = with pkgs; [
    nodejs_22
    gnumake
    cargo
    rustc
    gcc
    python313
  ];
}
