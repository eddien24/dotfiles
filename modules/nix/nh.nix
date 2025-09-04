{pkgs, ...}: {
  programs.nh = {
    enable = true;
    flake = "/home/eddie/.dotfiles/"; 
    clean = {
      enable = true;
      dates = "daily";
      extraArgs = "--keep-since 7d";
    };
  };
}
