{pkgs, ...}: {
  home.packages = with pkgs; [
    wl-clipboard
    grim
    slurp
    cliphist
    swww
    wl-gammarelay-rs
    brightnessctl
    playerctl
    # calibre
    xorg.xhost
    vscode
  ];
}
