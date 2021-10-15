# Adapted from https://gist.githubusercontent.com/LukeSmithxyz/e62f26e55ea8b0ed41a65912fbebbe52

export GOPRIVATE="gitlab.netcraft.com"
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.local/bin

source $HOME/.dotfiles/.include/antigen/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Enable colors and change prompt:
autoload -U colors && colors
PS1_INSERT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PS1_NORMAL="%B%{$fg[cyan]%}[%n@%M %~]%{$reset_color%}$%b "
PS1="$PS1_INSERT"

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1
export EDITOR=vim

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# MARK: Begin code to add prompt section showing Vim mode:
function zle-line-init zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
        PS1="$PS1_NORMAL"
    elif [[ ${KEYMAP} == main ]] ||
         [[ ${KEYMAP} == viins ]] ||
         [[ ${KEYMAP} = '' ]] ||
         [[ $1 = 'beam' ]]; then
        PS1="$PS1_INSERT"
    fi

    zle reset-prompt
}
zle -N zle-keymap-select
zle -N zle-line-init

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

genpass () {
    # Shortcut for generating a random base64 password of the given length (default 16 characters):
    base64 /dev/urandom | tr -dc A-Za-z0-9 | head -c${1:-16} && echo
}

nsc () {
    # Shortcut for executing a command in a nix-shell environment with a package loaded.  By default, the command is the
    # package name.
    #
    # For example, if you want to launch remmina, a GUI RDP client: `nsc remmina`
    nix-shell -p $1 --command ${1:-$2}
}

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Add support for base16 terminal commands
BASE16_SHELL=$HOME/.dotfiles/.include/base16/base16-shell
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
[ -z "$BASE16_THEME" ] && base16_onedark
# Add grc aliases (to enable syntax highlighting for dig, traceroute and many more)
[[ -s "/usr/local/etc/grc.zsh" ]] && source /usr/local/etc/grc.bashrc 

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"
export LSCOLORS=GxFxCxDxBxegedabagaced

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "$HOME/.zsh_local" ] && source "$HOME/.zsh_local"

# Install antigen plugins:
antigen apply

# Set up config for the plugins just installed:
ZSH_HIGHLIGHT_STYLES[unknown-token]='none'
bindkey '^N' autosuggest-accept

# fzf:
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
bindkey -s '^p' 'vim $(fzf)\n'

alias n=nvim
