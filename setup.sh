# fail fast
set -e

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

section 'installing oh-my-zsh'
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  check "Oh My Zsh installed"
else
  check "Oh My Zsh already installed"
fi

section 'oh-my-zsh autosuggestions plugin'
if [ ! -d $ZSH/plugins/zsh-autosuggestions ]; then
  nest "Cloning..."
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/plugins/zsh-autosuggestions --quiet
  check "Cloned"
  else
  check "Already exists"
fi

section 'zsh-z plugin'
if [ ! -d $ZSH/plugins/zsh-z ]; then
  nest "Cloning..."
  git clone https://github.com/agkozak/zsh-z $ZSH/plugins/zsh-z
  check "Cloned"
  else
  check "Already exists"
fi

section 'Symlink dotfiles'
nest .vimrc
ln -svf ~/dotfiles/.vimrc ~
nest .zshrc
ln -svf ~/dotfiles/.zshrc ~
