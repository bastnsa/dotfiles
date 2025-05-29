# Main aliases
alias cl='clear'
alias l='eza --color=always --group-directories-first --long --no-filesize --no-permissions --no-time --no-user'
alias la='eza --all --color=always --group-directories-first --long --no-filesize --no-permissions --no-time --no-user'
alias ll='eza --all --color=always --group-directories-first --long --no-user --reverse --sort=modified --binary'
alias t='eza --all --color=always --group-directories-first --level=2 --long --no-filesize --no-permissions --no-time --no-user --tree'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias nv='nvim'
alias py='python3'

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

# fzf a file and open with nvim
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
