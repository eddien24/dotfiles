{
  wayland.windowManager.hyprland.settings = {
    monitor = [
      {
        output = "";
        mode = "preferred";
        position = "auto";
        scale = "1.2";
      }
    ];

    config = {
      general = {
        gaps_in = 3;
        gaps_out = 3;
        border_size = 0;
        resize_on_border = true;
        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 10;
        active_opacity = 1.0;
        inactive_opacity = 0.9;

        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          color = "0x1a1a1aee";
        };

        blur = {
          enabled = true;
          size = 3;
          passes = 1;
          vibrancy = 0.1696;
        };
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = false;
      };

      input = {
        kb_layout = "us";
        kb_variant = "";
        kb_model = "";
        kb_options = "";
        kb_rules = "";
        follow_mouse = 1;
        sensitivity = 0;
        touchpad = {
          natural_scroll = false;
        };
      };

      gestures = {
        workspace_swipe_distance = 200;
        workspace_swipe_invert = false;
        workspace_swipe_create_new = false;
      };

      dwindle = {
        preserve_split = true;
      };
    };

    gesture = [
      {
        fingers = 3;
        direction = "horizontal";
        action = "workspace";
      }
    ];
  };
}
