export DOTFILES=$HOME/dotfiles
export ZSH=$HOME/.oh-my-zsh

plugins=(
  git
  gitfast
  z
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source $DOTFILES/my.zsh

# Starship prompt
export STARSHIP_CONFIG=$DOTFILES/starship.toml
eval "$(starship init zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
