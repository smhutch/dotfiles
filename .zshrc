export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"
ZSH_CUSTOM=$HOME/.oh-my-zsh/smhutch-zsh

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Set Spaceship ZSH as a promp
autoload -U promptinit; promptinit
prompt spaceship

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
