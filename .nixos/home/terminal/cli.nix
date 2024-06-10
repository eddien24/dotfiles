{pkgs, ...}: {
  home.packages = with pkgs; [
    stow
    trash-cli
    rmtrash
    cron
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
