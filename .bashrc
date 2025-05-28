# Prompt 
source ~/.bash/prompt.bash

# Aliases
source ~/.shell/aliases.sh

# Functions
source ~/.shell/functions.sh

# Settings
source ~/.bash/settings.bash

# Local machine-specific configurations (not tracked by git)
[ -f "$HOME/.bashrc_local" ] && source "$HOME/.bashrc_local"
