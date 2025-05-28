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

# Local machine-specific configurations (not tracked by git)
[ -f "$HOME/.zshrc_local" ] && source "$HOME/.zshrc_local"
