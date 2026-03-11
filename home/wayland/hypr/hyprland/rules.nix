{pkgs, ...}: {
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      "suppress_event maximize, match:class .*"
    ];
  };
}
