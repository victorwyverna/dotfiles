# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH theme
ZSH_THEME="simple"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

# Sourcing the Oh-My-ZSH source:
source "$ZSH/oh-my-zsh.sh"

# Plugin management
ZPLUG_HOME="/opt/homebrew/opt/zplug"
export ZPLUG_HOME
source "$HOME/.zplugrc"

# Shell parts
source "$HOME/.config/shell/.aliases"
