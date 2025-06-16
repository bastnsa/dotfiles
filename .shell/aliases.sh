# General
alias l='eza --color=always --group-directories-first --long --no-user --no-filesize --no-permissions --no-time'
alias la='eza --all --color=always --group-directories-first --long --no-user --no-filesize --no-permissions --no-time'
alias ll='eza --color=always --group-directories-first --long --binary --sort=name'
alias lla='eza --all --color=always --group-directories-first --long --binary --sort=name'
alias t='eza --all --color=always --group-directories-first --long --no-user --no-filesize --no-permissions --no-time --tree --level=2'
alias cl='clear'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias nv='nvim'
alias pn='pnpm'
alias py='python3'
alias tm='tmux'

# Shell specific
if [ -n "$BASH_VERSION" ]; then
    alias bat='batcat'
    alias so='source ~/.bashrc'
fi
if [ -n "$ZSH_VERSION" ]; then
    alias so='source ~/.zshrc'
fi

# Create a directory and cd into it
mcd() {
  mkdir -p "$1"
  cd "$1"
}

# fzf and open with nvim
nf() {
    local file
    file=$(fzf --height=40%)
    if [[ -n "$file" ]]; then
      nvim "$file"
    fi
}

# Create a file and any needed directories
tp() {
  mkdir -p "$(dirname "$1")" && touch "$1"
}

# Credits to https://github.com/anishathalye
# Go up [n] directories
up() {
  local cdir="$(pwd)"
  if [[ "${1}" == "" ]]; then
    cdir="$(dirname "${cdir}")"
  elif ! [[ "${1}" =~ ^[0-9]+$ ]]; then
    echo "Error: argument must be a number"
  elif ! [[ "${1}" -gt "0" ]]; then
    echo "Error: argument must be positive"
  else
    for ((i=0; i<${1}; i++)); do
      local ncdir="$(dirname "${cdir}")"
      if [[ "${cdir}" == "${ncdir}" ]]; then
        break
      else
        cdir="${ncdir}"
      fi
    done
  fi
  cd "${cdir}"
}
