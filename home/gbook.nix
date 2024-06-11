{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./scripts
    ./terminal
    ./programs
    ./wayland
  ];

  home = {
    username = "eddie";
    homeDirectory = "/home/eddie";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
