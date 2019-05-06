function uni_git() {
    git config user.name "James Williams"
    git config user.email "james.williams17@imperial.ac.uk"
}

alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias shell1='ssh jw1317@shell1.doc.ic.ac.uk'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR="$VISUAL"
