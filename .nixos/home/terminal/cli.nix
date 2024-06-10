{pkgs, ...}: {
  home.packages = with pkgs; [
    cron
    libnotify
    stow
    trash-cli
    rmtrash
  ];

  programs = {
    eza.enable = true;
    fzf.enable = true;
    ripgrep.enable = true;
    zoxide.enable = true;
  };
}
