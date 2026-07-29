{lib, ...}: let
  lua = lib.generators.mkLuaInline;

  bind = keys: dispatcher: {_args = [keys dispatcher];};
  mouseBind = keys: dispatcher: {_args = [keys dispatcher {mouse = true;}];};

  dsp = {
    exec = cmd: lua ''hl.dsp.exec_cmd("${cmd}")'';
    close = lua "hl.dsp.window.close()";
    focus = dir: lua ''hl.dsp.focus({ direction = "${dir}" })'';
    focusWorkspace = ws: lua ''hl.dsp.focus({ workspace = "${toString ws}" })'';
    moveToWorkspace = ws: lua ''hl.dsp.window.move({ workspace = "${toString ws}", follow = false })'';
    drag = lua "hl.dsp.window.drag()";
    resize = lua "hl.dsp.window.resize()";
  };
in {
  wayland.windowManager.hyprland.settings.bind =
    [
      (bind "SUPER + Q" (dsp.exec "kitty"))
      (bind "SUPER + C" dsp.close)
      (bind "SUPER + M" (dsp.exec "hyprshutdown"))
      (bind "SUPER + R" (dsp.exec "rofi -show drun -show-icons"))

      # move with HJKL
      (bind "SUPER + H" (dsp.focus "left"))
      (bind "SUPER + L" (dsp.focus "right"))
      (bind "SUPER + K" (dsp.focus "up"))
      (bind "SUPER + J" (dsp.focus "down"))

      # launch firefox
      (bind "SUPER + F" (dsp.exec "firefox -p personal"))
      (bind "SUPER + SHIFT + F" (dsp.exec "firefox -p school"))

      # screenshot
      (bind "SUPER + S" (dsp.exec "screenshot"))

      # toggle night light
      (bind "SUPER + N" (dsp.exec "busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 6500"))
      (bind "SUPER + SHIFT + N" (dsp.exec "busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 4000"))

      # Restart Waybar
      (bind "SUPER + P" (dsp.exec "pkill waybar && waybar"))

      # Power menu
      (bind "SUPER + U" (dsp.exec "rofi -show menu -modi 'menu:powermenu --choices=shutdown/reboot'"))

      # Lockscreen (SUPER + ;)
      (bind "SUPER + code:47" (dsp.exec "pidof hyprlock || hyprlock > /dev/null"))

      # Clipboard history
      (bind "SUPER + X" (dsp.exec "rofi -modi clipboard:cliphist-rofi -show clipboard -show-icons"))

      # New wallpaper
      (bind "SUPER + W" (dsp.exec "wpswap"))
      (bind "SUPER + SHIFT + W" (dsp.exec "pkill awww && swww-daemon"))

      (bind "XF86AudioRaiseVolume" (dsp.exec "wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"))
      (bind "XF86AudioLowerVolume" (dsp.exec "wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%-"))
      (bind "XF86AudioMute" (dsp.exec "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))

      # Brightness control
      (bind "XF86MonBrightnessDown" (dsp.exec "brightnessctl set 20-"))
      (bind "XF86MonBrightnessUp" (dsp.exec "brightnessctl set +20"))

      # Mouse Binds
      (mouseBind "SUPER + mouse:272" dsp.drag)
      (mouseBind "SUPER + mouse:273" dsp.resize)

      # 0 for workspace 10
      (bind "SUPER + 0" (dsp.focusWorkspace "10"))
      (bind "SUPER + SHIFT + 0" (dsp.moveToWorkspace "10"))
    ]
    ++ (lib.concatMap (
      i: let
        ws = toString i;
      in [
        (bind "SUPER + ${ws}" (dsp.focusWorkspace ws))
        (bind "SUPER + SHIFT + ${ws}" (dsp.moveToWorkspace ws))
      ]
    ) (lib.range 1 9));
}
