# fail fast
set -e

ZSH_CUSTOM=$HOME/dotfiles/.oh-my-zsh

check () {
  echo "  \xE2\x9C\x94 $1"
}

section () {
  echo ""
  echo "— $1"
}

nest () {
  echo "  | $1"
}

echo 'Running install script.'

section 'oh-my-zsh autosuggestions plugin'
if [ ! -d $ZSH_CUSTOM/plugins/zsh-autosuggestions ]; then
  nest "Cloning..."
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions --quiet
  check "Cloned"
  else
  check "Already exists"
fi

section 'spaceship prompt'
if [ ! -d $ZSH_CUSTOM/themes/spaceship-prompt ]; then
  nest "Cloning..."
  git clone https://github.com/denysdovhan/spaceship-prompt.git $ZSH_CUSTOM/themes/spaceship-prompt --quiet --depth=1
  check "Cloned"
  ln -svf $ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme $ZSH_CUSTOM/themes/spaceship.zsh-theme
  check "Symlinked prompt to themes directory"
  else
  check "Already exists"
fi

section 'global deps'
npm i -g trash-cli

section 'Symlink dotfiles'
nest .vimrc
ln -svf ~/dotfiles/.vimrc ~
nest .zshrc
ln -svf ~/dotfiles/.zshrc ~
