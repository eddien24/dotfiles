{
  config,
  pkgs,
  ...
}: {
  # Touchpad settings
  services.libinput.touchpad = {
    naturalScrolling = false;
    accelProfile = "flat";
  };

  # Adjust brightness
  boot.kernelParams = [
    "acpi_backlight=native"
    "i915.enable_dpcd_backlight=3"
  ];

  # Fonts
  fonts.packages = with pkgs; [
    (nerdfonts.override {fonts = ["FiraMono" "JetBrainsMono"];})
  ];

  fonts.fontconfig.defaultFonts.monospace = ["FiraMono"];

  # Auto upgrades
  system.autoUpgrade = {
    enable = true;
    allowReboot = true;
  };
}
