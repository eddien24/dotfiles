{pkgs, ...}: {
  home.packages = with pkgs; [
    wl-clipboard
    grim
    slurp
    cliphist
    rofi-wayland
    swww
    wl-gammarelay-rs
    brightnessctl
    playerctl
  ];
}
