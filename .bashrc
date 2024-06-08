# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# ignore commands in history
HISTIGNORE="clear:rm *:exit:e:c"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# add .local/bin to path
export PATH="$HOME/.local/bin:$PATH"

alias c='clear'
alias e='exit'
alias cp='cp -i'
alias mv='mv -i'
alias s='sudo !!'

# nvim alias
alias n='nvim'

# less alias for colors
alias less='less -R'

# ripgrep alias
alias grep='rg -i'

# starship
eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# zoxide 
eval "$(zoxide init --cmd cd bash)"

# eza
alias ls='eza --color=always --git --no-filesize --no-user --no-time --icons=always --long --no-permissions'
alias la='eza -lah --git --no-user --icons=always --color=always'
alias tree='eza --tree'

# trash
alias rm='rmtrash'

# Set up fzf key bindings and fuzzy completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
eval "$(fzf --bash)"

# Btop
alias htop='btop'

# mkdir & cd function
function mk {
    command mkdir $1 && cd $1
}

# make rust project 
function rmk {
    command cargo generate basic --name $1 && cd $1 
}

# Use .bashrc in home-manager 
. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
