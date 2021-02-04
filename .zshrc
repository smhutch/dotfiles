# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/dotfiles/.oh-my-zsh
ZSH_THEME="spaceship"

plugins=(
  git
  z
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvmi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
