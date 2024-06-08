{
  config,
  pkgs,
  ...
}: {
  home.username = "eddie";
  home.homeDirectory = "/home/eddie";

  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  # Let Home Manager install and manage itself.
  programs = {
    home-manager.enable = true;
    firefox.enable = true;
    tmux.enable = true;
    btop.enable = true;

    neovim = {
      enable = true;
      defaultEditor = true;
    };

    git = {
      enable = true;
      extraConfig = {
        credential.helper = "store";
        init.defaultBranch = "main";
      };
      userEmail = "edward_nguyen@brown.edu";
      userName = "Eddie Nguyen";
    };

    zoxide.enable = true;
    fzf.enable = true;
    eza.enable = true;
    ripgrep.enable = true;
    starship.enable = true;
  };

  services = {
    cliphist.enable = true;
  };
}
