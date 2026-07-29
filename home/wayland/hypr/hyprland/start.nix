{lib, ...}: let
  lua = lib.generators.mkLuaInline;
in {
  wayland.windowManager.hyprland.settings = {
    on = {
      _args = [
        "hyprland.start"
        (lua ''
          function()
              hl.exec_cmd("aww-daemon")
              hl.exec_cmd("waybar")
              hl.exec_cmd("mako")
              hl.exec_cmd("wl-gammarelay-rs")
              hl.exec_cmd("hypridle")
              hl.exec_cmd("wl-paste --watch cliphist store")
              hl.exec_cmd("busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 4000")
          end
        '')
      ];
    };
  };
}
