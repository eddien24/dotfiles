{pkgs, ...}: {
  environment.variables.FLAKE = "/home/mihai/.dotfiles/.nixos";
  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      dates = "daily";
      extraArgs = "--keep-since 7d";
    };
  };
}
