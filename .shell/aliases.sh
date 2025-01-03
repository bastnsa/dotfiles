# Main aliases
alias cl='clear'
alias l='eza --color=always --grid --group-directories-first --icons=always --long --no-filesize --no-permissions --no-time --no-user'
alias la='eza --all --color=always --grid --group-directories-first --icons=always --long --no-filesize --no-permissions --no-time --no-user'
alias ll='eza --all --color=always --icons=always --long --no-user --reverse --sort=modified'
alias t='eza --all --color=always --group-directories-first --icons=always --level=2 --long --no-filesize --no-permissions --no-time --no-user --tree'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias nv='nvim'
alias py='python3'

# Shell specific
if [ -n "$BASH_VERSION" ]; then
    alias bat='batcat'
    alias fman='compgen -c | fzf | xargs man'
    alias so='source ~/.bashrc'
fi
if [ -n "$ZSH_VERSION" ]; then
    alias fman='print -l ${(k)commands} | fzf | xargs man'
    alias so='source ~/.zshrc'
fi

# Create a directory and cd into it
mcd() {
  mkdir -p "$1"
  cd "$1"
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
