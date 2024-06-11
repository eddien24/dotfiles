{pkgs, ...}: {
  wayland.windowManager.hyprland.settings = {
    bind = [
      # defaults
      "SUPER, Q, exec, kitty"
      "SUPER, C, killactive"
      "SUPER, M, exit"
      "SUPER, V, togglefloating"
      "SUPER, R, exec, rofi -show drun -show-icons"
      "SUPER, J, togglesplit"

      # move with arrow keys
      "SUPER, left, movefocus, l"
      "SUPER, right, movefocus, r"
      "SUPER, up, movefocus, u"
      "SUPER, down, movefocus, d"

      # move with HJKL
      "SUPER, H, movefocus, l"
      "SUPER, J, movefocus, d"
      "SUPER, K, movefocus, u"
      "SUPER, L, movefocus, r"

      # Switch workspaces
      "SUPER, 1, workspace, 1"
      "SUPER, 2, workspace, 2"
      "SUPER, 3, workspace, 3"
      "SUPER, 4, workspace, 4"
      "SUPER, 5, workspace, 5"
      "SUPER, 6, workspace, 6"
      "SUPER, 7, workspace, 7"
      "SUPER, 8, workspace, 8"
      "SUPER, 9, workspace, 9"
      "SUPER, 0, workspace, 10"

      # Move active window to a workspace with SUPER + SHIFT + [0-9]
      "SUPER SHIFT, 1, movetoworkspacesilent, 1"
      "SUPER SHIFT, 2, movetoworkspacesilent, 2"
      "SUPER SHIFT, 3, movetoworkspacesilent, 3"
      "SUPER SHIFT, 4, movetoworkspacesilent, 4"
      "SUPER SHIFT, 5, movetoworkspacesilent, 5"
      "SUPER SHIFT, 6, movetoworkspacesilent, 6"
      "SUPER SHIFT, 7, movetoworkspacesilent, 7"
      "SUPER SHIFT, 8, movetoworkspacesilent, 8"
      "SUPER SHIFT, 9, movetoworkspacesilent, 9"
      "SUPER SHIFT, 0, movetoworkspacesilent, 10"

      # Scroll through existing workspaces with SUPER + scroll
      "SUPER, mouse_down, workspace, e+1"
      "SUPER, mouse_up, workspace, e-1"

      # Shortcuts to launch programs
      "SUPER, F, exec, firefox -p personal"
      "SUPER SHIFT, F, exec, firefox -p school"

      # Screenshot & copy to clipboard
      "SUPER, S, exec, screenshot"

      # Night light toggle
      "SUPER, N, exec, busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 6500"
      "SUPER SHIFT, N, exec, busctl --user -- set-property rs.wl-gammarelay / rs.wl.gammarelay Temperature q 4000"

      # Restart Waybar
      "SUPER, P, exec, pkill waybar && waybar"

      # Power menu
      "SUPER, U, exec, rofi -show menu -modi 'menu:powermenu --choices=shutdown/reboot'"

      # Lockscreen (SUPER + ;)
      "SUPER, code:47, exec, pidof hyprlock || hyprlock > /dev/null"

      # Clipboard history
      "SUPER, X, exec, rofi -modi clipboard:~/.local/share/rofi/cliphist-rofi -show clipboard -show-icons"

      # New wallpaper
      "SUPER, W, exec, wpswap"
      "SUPER SHIFT, W, exec, pkill swww && swww-daemon"
    ];

    binde = [
      # Volume control
      ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"
      ", XF86AudioLowerVolume, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%-"
      ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"

      # Brightness control
      ", XF86MonBrightnessDown, exec, brightnessctl set 20-"
      ", XF86MonBrightnessUp, exec, brightnessctl set +20"
    ];

    bindm = [
      # Move/resize windows with SUPER + LMB/RMB and dragging
      "SUPER, mouse:272, movewindow"
      "SUPER, mouse:273, resizewindow"
    ];
  };
}
