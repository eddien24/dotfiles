{
  config,
  pkgs,
  ...
}: {
  imports = [
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
