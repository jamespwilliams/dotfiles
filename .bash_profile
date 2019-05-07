function uni_git() {
    git config user.name "James Williams"
    git config user.email "james.williams17@imperial.ac.uk"
}

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias shell1='ssh jw1317@shell1.doc.ic.ac.uk'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR="$VISUAL"
