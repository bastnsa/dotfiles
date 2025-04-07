# Prompt 
source ~/.zsh/prompt.zsh

# Aliases
source ~/.shell/aliases.sh

# Functions
source ~/.shell/functions.sh

# Settings
source ~/.zsh/settings.zsh

# Plugins
source ~/.zsh/plugins/autosuggestions.zsh
source ~/.zsh/plugins/syntax-highlighting.zsh
source ~/.zsh/plugins/zoxide.zsh

# bun completions
[ -s "/Users/bastiansalinas/.bun/_bun" ] && source "/Users/bastiansalinas/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/bastiansalinas/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
