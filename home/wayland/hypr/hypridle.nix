{pkgs, ...}: {
  services.hypridle = {
    enable = true;
    settings = {
      general = {
        lock_cmd = "pidof hyprlock || hyprlock > /dev/null";
        before_sleep_cmd = "pidof hyprlock || hyprlock > /dev/null";
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };

      listener = [
        {
          timeout = 90;
          on-timeout = "brightnessctl -s set 5";
          on-resume = "brightnessctl -r";
        }
        {
          timeout = 180;
          on-timeout = "pidof hyprlock || hyprlock > /dev/null";
        }
        {
          timeout = 240;
          on-timeout = "hyprctl dispatch dpms off";
          on-resume = "hyprctl dispatch dpms on";
        }
      ];
    };
  };
}
