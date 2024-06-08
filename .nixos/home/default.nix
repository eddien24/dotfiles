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

    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
