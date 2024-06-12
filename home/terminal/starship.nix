{pkgs, ...}: {
  programs.starship = {
    enable = true;
    settings = {
      c.symbol = " ";
      directory.read_only = " 󰌾 ";
      docker_context.symbol = "󰡨 ";
      golang.symbol = " ";
      nix_shell = {
        unknown_msg = "unknown";
        symbol = "󱄅 ";
      };
      rust.symbol = "󱘗 ";
      lua.symbol = "󰢱 ";
      package.symbol = "󰏗 ";
    };
  };
}
