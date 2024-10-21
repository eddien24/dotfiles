{pkgs, ...}: {
  home.packages = [pkgs.zsh-fzf-tab];

  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";

    history = {
      ignoreAllDups = true;
      ignorePatterns = [
        "rm *"
        "clear"
        "c"
        "exit"
        "e"
      ];
    };

    shellAliases = {
      c = "clear";
      e = "exit";
      cp = "cp -i";
      mv = "mv -i";
      s = "sudo !!";
      n = "nvim";
      ls = "eza --color=always --git --no-filesize --no-user --no-time --icons=always --long --no-permissions";
      la = "eza -lah --git --icons=always --color=always";
      tree = "eza --tree";
      rm = "rmtrash";
      htop = "btop";
      cat = "bat";
      less = "bat";
      diff = "batdiff";
      man = "batman";
      grep = "batgrep -i";
      icat = "kitten icat";
    };

    initExtra = ''
      # Source plugins
                source ${pkgs.zsh-fzf-tab}/share/fzf-tab/fzf-tab.plugin.zsh

            function mk {
                command mkdir $1 && cd $1
            }

            function rmk {
                command cargo generate eddien24/rust-template --name $1 && cd $1
            }
                  # Emacs bindings
                  bindkey -e

                  # Rebind UP and DOWN to search history
                  bindkey -r "^[[A"
                  bindkey -r "^[[B"
                  bindkey "^[[A" history-search-backward
                  bindkey "^[[B" history-search-forward

                  # Completion styling
                  zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
                  zstyle ':completion:*' menu no
                  zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza --color $realpath'
                  zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza --color $realpath'

                  eval "$(fzf --zsh)"
                  eval "$(zoxide init --cmd cd zsh)"
                  eval "$(starship init zsh)"
    '';

    loginExtra = ''
       if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
          exec Hyprland
      fi
    '';
  };
}
