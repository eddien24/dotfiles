{pkgs, ...}: {
  environment.variables.NH_FLAKE = "/home/eddie/.dotfiles/";
  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      dates = "daily";
      extraArgs = "--keep-since 7d";
    };
  };
}
