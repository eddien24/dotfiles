{pkgs, ...}: {
  home-manager.backupFileExtension = ".bak";
  environment.pathsToLink = [ "/share/applications" "/share/xdg-desktop-portal" ];
}
