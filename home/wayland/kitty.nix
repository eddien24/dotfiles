{pkgs, ...}: {
  # Set current-theme.conf by using `kitten themes`
  programs.kitty = {
    enable = true;
    extraConfig = ''
      include current-theme.conf
      shell_integration no-cursor
       map ctrl+shift+h neighboring_window left
       map ctrl+shift+j neighboring_window down
       map ctrl+shift+k neighboring_window up
       map ctrl+shift+l neighboring_window right

       map ctrl+shift+enter new_window_with_cwd
    '';
  };
}
