{pkgs, ...}: {
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "awww-daemon"
      "waybar"
      "mako"
      "wl-gammarelay-rs"
      "hypridle"
    ];

    exec = [
      "wl-paste --watch cliphist store"
      "busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 4000"
    ];
  };
}
