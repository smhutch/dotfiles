alias reload="source ~/.zshrc"
alias rm="trash"
alias co="git checkout"

name() {
    git symbolic-ref --short HEAD | cat
}
