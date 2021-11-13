ZSH_CUSTOM=$HOME/dotfiles/omz

plugins=(
  git
  z
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Starthip prompt
eval "$(starship init zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
