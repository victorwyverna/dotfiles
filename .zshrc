eval "$(oh-my-posh init zsh --config 'spaceship')"

if [ -f "$HOME/.config/shell/.aliases" ]; then
  source "$HOME/.config/shell/.aliases"
fi
