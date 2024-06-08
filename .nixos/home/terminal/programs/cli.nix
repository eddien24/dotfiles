{pkgs, ...}: {
  home.packages = with pkgs; [
    starship
    libnotify
  ];

  programs = {
    tmux.enable = true;
    zoxide.enable = true;
    fzf.enable = true;
    eza.enable = true;
    ripgrep.enable = true;
  };
}
