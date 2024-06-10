{pkgs, ...}: {
  environment.variables.FLAKE = "/home/eddie/.dotfiles/.nixos";
  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      dates = "daily";
      extraArgs = "--keep-since 7d";
    };
  };
}
