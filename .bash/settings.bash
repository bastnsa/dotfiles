# Skip settings for non-interactive shells
case $- in
    *i*) ;;
      *) return;;
esac

# Enable tab completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Bat
export BAT_THEME=base16

# Fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source ~/.shell/settings-fzf.sh
bind -r '\C-t'
bind -x '"\C-f": fzf-file-widget'

# Git
export GIT_MERGE_AUTOEDIT=no

# History
HISTSIZE=5000
HISTFILESIZE=10000
HISTFILE=~/.bash_history
HISTCONTROL=ignoreboth:erasedups
HISTTIMEFORMAT="%F %T "
HISTIGNORE="ls:ll:la:cd:pwd:exit:clear:history"
shopt -s histappend
shopt -s cmdhist
shopt -s lithist
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a"

# Less: display non-text files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Terminal window: auto-update dimensions
shopt -s checkwinsize

# Vim style navigation
bind '"\C-j": next-history'
bind '"\C-k": previous-history'
bind '"\C-h": backward-char'
bind '"\C-l": forward-char'
