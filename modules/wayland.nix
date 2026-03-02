{pkgs, ...}: {
  # Make things work on Wayland
  security.pam.services.hyprlock = {};
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      # help with qemu
      intel-media-driver
      intel-vaapi-driver
      libvdpau-va-gl
    ];
  };
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
