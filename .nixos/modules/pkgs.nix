{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    starship
    gcc
    cmake
    alejandra
    rustup
  ];
}
