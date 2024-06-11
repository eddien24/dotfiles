{pkgs, ...}: {
  users.defaultUserShell = pkgs.zsh;
  environment.pathsToLink = ["/share/zsh"];
  system.userActivationScripts.zshrc = "touch .zshrc";

  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    syntaxHighlighting = {
      enable = true;
      patterns = {"rm -rf *" = "fg=black,bg=red";};
      styles = {"alias" = "fg=magenta";};
      highlighters = ["main" "brackets" "pattern"];
    };
  };
}
