{pkgs, ...}: {
  programs.bat = {
    enable = true;
    config = {
      pager = "less -IFR";
      theme = "Sublime Snazzy";
    };
    extraPackages = with pkgs.bat-extras; [batman batdiff batgrep];
  };
}
