# fail fast
set -e

ZSH_CUSTOM=$HOME/dotfiles/omz

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

section 'Symlink dotfiles'
nest .vimrc
ln -svf ~/dotfiles/.vimrc ~
nest .zshrc
ln -svf ~/dotfiles/.zshrc ~
