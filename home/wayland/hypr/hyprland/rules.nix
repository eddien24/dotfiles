{
  wayland.windowManager.hyprland.settings = {
    window_rule = [
      {
        _args = [
          {
            match = {class = ".*";};
            suppress_event = "maximize";
          }
        ];
      }
    ];
  };
}
