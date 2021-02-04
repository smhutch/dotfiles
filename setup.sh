# fail fast
set -e

# oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions

# spaceship promot
npm install -g spaceship-prompt

# Symlink each dotfile expected location
ln -svf ~/dotfiles/.vimrc ~
ln -svf ~/dotfiles/.zshrc ~
