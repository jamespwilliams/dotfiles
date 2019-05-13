function uni_git() {
    git config user.name "James Williams"
    git config user.email "james.williams17@imperial.ac.uk"
}

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias shell1='ssh jw1317@shell1.doc.ic.ac.uk'

export LSCOLORS=GxFxCxDxBxegedabagaced

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"

export GIT_EDITOR=vim
export VISUAL=vim

[[ -s "/usr/local/etc/grc.bashrc" ]] && source /usr/local/etc/grc.bashrc 

