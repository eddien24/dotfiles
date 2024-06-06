{
  config,
  pkgs,
  ...
}: {
  # Touchpad settings
  services.xserver.libinput.touchpad = {
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
    (nerdfonts.override {fonts = ["FiraMono"];})
  ];

  fonts.fontconfig.defaultFonts.monospace = ["FiraMono"];

  # Garbage collection
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-generations +5";
  };

  boot.loader.grub.configurationLimit = 5;

  # Auto upgrades
  system.autoUpgrade = {
    enable = true;
    allowReboot = true;
  };
}
