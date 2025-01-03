# Prompt 
source ~/.bash/prompt.bash

# Aliases
source ~/.shell/aliases.sh

# Functions
source ~/.shell/functions.sh

# Settings
source ~/.bash/settings.bash

# Load nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

# Source pip installs
export PATH="$HOME/.local/bin:$PATH"
