{pkgs, ...}: {
  home.packages = with pkgs; [
    nodejs_25
    gnumake
    cargo
    rustc
    gcc
    python313
  ];
}
