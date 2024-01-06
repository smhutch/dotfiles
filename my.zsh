alias reload="source ~/.zshrc"
alias rm="trash"
alias co="git checkout"

branch-name() {
    git symbolic-ref --short HEAD | cat
}
