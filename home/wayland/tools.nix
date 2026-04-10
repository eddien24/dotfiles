{pkgs, ...}: {
  home.packages = with pkgs; [
    wl-clipboard
    grim
    slurp
    cliphist
    awww
    wl-gammarelay-rs
    brightnessctl
    playerctl
    # calibre
    xhost
    vscode
  ];
}
