rm -rf .myconf
git clone --separate-git-dir=$HOME/.myconf https://github.com/jamespwilliams/dotfiles.git $HOME/myconf-tmp
rm -r ~/myconf-tmp/
/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME reset --hard HEAD
/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME config status.showUntrackedFiles no
source $HOME/.bash_profile 
