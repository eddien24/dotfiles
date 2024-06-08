{pkgs, ...}: {
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "swww-daemon"
      "waybar"
      "mako"
      "wl-gammarelay-rs"
      "hypridle"
    ];
    exec = [
      "wl-paste --watch cliphist store"
      "$nighton"
    ];
  };
}
