{pkgs, ...}: {
  programs.starship = {
    enable = true;
    settings = {
      format = "$directory$git_branch$git_state$git_status$nix_shell$line_break$character";
      right_format = "$cmd_duration";
      c.symbol = " ";
      cmd_duration.format = "[$duration]($style)";
      directory.read_only = " 󰌾 ";
      docker_context.symbol = "󰡨 ";
      golang = {
        format = "[$symbol]($style)";
        symbol = " ";
      };
      nix_shell = {
        format = "via [$symbol$state]($style)";
        unknown_msg = "unknown";
        symbol = "󱄅 ";
      };
      rust = {
        format = "[$symbol]($style)";
        symbol = "󱘗 ";
      };
      lua = {
        format = "[$symbol]($style)";
        symbol = "󰢱 ";
      };
      package = {
        disabled = true;
        symbol = "󰏗 ";
      };
    };
  };
}
