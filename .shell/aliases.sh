# Aliases
alias cat='bat'
alias cl='clear'
alias ff='fzf'
alias l='ls -G'
alias la='ls -G -a'
alias lc='eza --grid --color=always --group-directories-first --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias lca='eza --all --grid --color=always --group-directories-first --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias ll='ls -G -l'
alias lla='ls -G -l -a'
alias llc='eza --all --color=always --long --icons=always --no-user'
alias mv='mv -i'
alias nv='nvim'
alias py='python3'
alias so='source ~/.zshrc'
alias tr='tree -C -L 2'
alias trc='eza --all --color=always --tree --level=2 --group-directories-first --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'

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
