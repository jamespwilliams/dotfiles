rm -rf .myconf

git clone --separate-git-dir=$HOME/.myconf https://github.com/jamespwilliams/dotfiles.git $HOME/myconf-tmp
rm -r ~/myconf-tmp/

/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME reset --hard HEAD
/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME config status.showUntrackedFiles no

source $HOME/.bash_profile 

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

if [[ "$OSTYPE" == "darwin"* ]] 
    curl -OO https://raw.githubusercontent.com/jeffkreeftmeijer/wwdc16.terminal/master/wwdc16-{light,dark}.terminal
    open wwdc16-*.terminal
fi

