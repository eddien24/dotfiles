{pkgs, ...}: {
  home.packages = [pkgs.waybar];
  programs.waybar = {
    style = ./style.css;
    settings = {
      mainBar = {
        layer = "top";
        margin = "0";
        margin-right = 10;
        modules-left = ["custom/launcher" "cpu" "memory" "network"];
        modules-center = ["hyprland/workspaces"];
        modules-right = ["backlight" "pulseaudio" "clock" "battery" "custom/power"];

        "custom/launcher" = {
          format = "󱄅 ";
          on-click = "rofi -show drun -show-icons";
        };

        "cpu" = {
          interval = 30;
          format = "  {}%";
          max-length = 1;
        };

        "memory" = {
          interval = 30;
          format = "  {}%";
          max-length = 1;
        };

        network = {
          format-wifi = "";
          format-ethernet = "󰈁";
          tooltip-format = "{essid} ({signalStrength}%)";
          format-linked = "{ifname} (No IP) ";
          format-disconnected = "⚠";
          format-alt = "{ifname}: {ipaddr}/{cidr}";
        };

        "hyrpland/workspaces" = {
          format = "{icon}";
          on-click = "activate";
        };

        backlight = {
          tooltip = false;
          format = " {}%";
          interval = 0;
        };

        pulseaudio = {
          tooltip = false;
          scroll-step = 5;
          format = "{icon} {volume}%";
          format-muted = "  {volume}%";
          format-bluetooth = "󰂱 {icon} {volume}";
          on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          format-icons = {
            default = [" " "  "];
          };
        };

        clock = {
          format = "<span> </span> {:%H:%M}";
        };

        battery = {
          format = "{icon} {capacity}%";
          format-charging = " {capacity}%";
          format-plugged = " {capacity}%";
          format-alt = "{time} {icon}";
          format-icons = [" " " " " " " " " "];
          interval = 1;
          states = {
            good = 80;
            warning = 30;
            critical = 2;
          };
        };

        "custom/power" = {
          format = "⏻ ";
          on-click = "rofi -show menu -modi 'menu:~/.local/bin/powermenu --choices=shutdown/reboot/lockscreen'";
        };
      };
    };
  };
}
