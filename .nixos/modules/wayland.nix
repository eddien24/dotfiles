{pkgs, ...}: {
  # Make things work on Wayland
  security.pam.services.hyprlock = {};
  hardware.opengl.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
