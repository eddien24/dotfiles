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
}
