{pkgs, ...}: {
  programs.tmux = {
    enable = true;
    clock24 = true;
    extraConfig = ''
      # plugins
      set -g @plugin 'tmux-plugins/tpm'
      set -g @plugin 'tmux-plugins/tmux-sensible'
      set -g @plugin 'christoomey/vim-tmux-navigator'

      # mouse support
      set -g mouse on

      # Start windows and panes at 1
      set -g base-index 1
      set -g pane-base-index 1
      set-window-option -g pane-base-index 1
      set-option -g renumber-windows on

      # color variant
      set -g @rose_pine_variant 'moon'

      # set prefix
      unbind C-b
      set -g prefix C-Space
      bind C-Space send-prefix

      # run plugins
      run '~/.config/tmux/plugins/tpm/tpm'

      # opens panes in current directory
      bind '"' split-window -v -c "#{pane_current_path}"
      bind '%' split-window -h -c "#{pane_current_path}"
    '';
  };
}
