# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
autoload -Uz compinit && compinit
setopt NO_BEEP
setopt print_eight_bit
setopt interactive_comments
setopt share_history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

alias ll='ls -la'export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"


setopt extended_history
alias history='history -t "%F %T"'


autoload -Uz vcs_info
autoload -Uz add-zsh-hook

zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'

function _update_vcs_info_msg() {
    LANG=en_US.UTF-8 vcs_info
    RPROMPT="${vcs_info_msg_0_}"
}
add-zsh-hook precmd _update_vcs_info_msg

eval "$(sheldon source)"
