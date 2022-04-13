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
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

section 'oh-my-zsh autosuggestions plugin'
if [ ! -d $ZSH/plugins/zsh-autosuggestions ]; then
  nest "Cloning..."
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/plugins/zsh-autosuggestions --quiet
  check "Cloned"
  else
  check "Already exists"
fi

section 'installing z'
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z

section 'Symlink dotfiles'
nest .vimrc
ln -svf ~/dotfiles/.vimrc ~
nest .zshrc
ln -svf ~/dotfiles/.zshrc ~
