{pkgs, ...}: {
  home.packages = with pkgs; [
    (writeShellScriptBin "cliphist-rofi" (builtins.readFile ./bin/cliphist-rofi))
    (writeShellScriptBin "powermenu" (builtins.readFile ./bin/powermenu))
    (writeShellScriptBin "rebuild" (builtins.readFile ./bin/rebuild))
    (writeShellScriptBin "screenshot" (builtins.readFile ./bin/screenshot))
    (writeShellScriptBin "wpswap" (builtins.readFile ./bin/wpswap))
  ];
}
