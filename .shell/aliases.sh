# Aliases
alias cl='clear'
alias l='eza --grid --color=always --group-directories-first --long --no-filesize --icons=always --no-time --no-user --no-permissions'
alias la='eza --all --grid --color=always --group-directories-first --long --no-filesize --icons=always --no-time --no-user --no-permissions'
alias lla='eza --all --color=always --long --icons=always'
alias mv='mv -i'
alias nv='nvim'
alias py='python3'
alias t='eza --all --tree --level=2 --color=always --group-directories-first --long --no-filesize --icons=always --no-time --no-user --no-permissions'

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
