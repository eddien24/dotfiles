{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./scripts
    ./terminal
  ];

  home = {
    username = "eddie";
    homeDirectory = "/home/eddie";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
