# Initialize completion
autoload -U compinit compinit
zstyle ':completion:*' list-dirs-first true

# Colors
export CLICOLOR=1
export LSCOLORS=exGxBxDxbxEgEdxbxgxcxd 
export LS_COLORS='di=34:ex=31'
export BAT_THEME=base16

# Fzf
source <(fzf --zsh)
source ~/.shell/settings-fzf.sh
bindkey -r '^T'
bindkey '^F' fzf-file-widget

# Git
export GIT_MERGE_AUTOEDIT=no

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Vim style keys
bindkey '^j' down-line-or-history
bindkey '^k' up-line-or-history
bindkey '^h' backward-char
bindkey '^l' forward-char
