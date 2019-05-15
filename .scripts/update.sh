#!/bin/bash

rm -rf .myconf

git clone --separate-git-dir=$HOME/.myconf https://github.com/jamespwilliams/dotfiles.git $HOME/myconf-tmp
rm -r ~/myconf-tmp/

/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME reset --hard HEAD
/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME config status.showUntrackedFiles no

source $HOME/.bash_profile 

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/chriskempson/base16-shell.git ~/.myconf/base16-shell

if [[ "$OSTYPE" == "darwin"* ]]; then
    mkdir -p $HOME/.myconf/terminal-themes/
    cd $HOME/.myconf/terminal-themes 

    curl -OO https://raw.githubusercontent.com/jeffkreeftmeijer/wwdc16.terminal/master/wwdc16-{light,dark}.terminal
    curl -OO https://raw.githubusercontent.com/jeffkreeftmeijer/appsignal.terminal/master/appsignal-{light,dark}.terminal

    open appsignal-*.terminal
    open wwdc16-*.terminal

    cd $HOME
fi

