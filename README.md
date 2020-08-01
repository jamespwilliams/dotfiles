# dotfiles

This repo contains configuration files which allow me to quickly configure a machine to my liking. Currently, I use `tmux` and `vim` a lot, which is reflected here. I've tried to keep my dotfiles (somewhat) minimal, and as easy to install as possible. I do work on both Mac and Linux, so these dotfiles should work on both.

GNU Stow should be used to manage the symlinks for the files.

### Installation

One liner:

```sh
git clone --recurse-submodules https://github.com/jamespwilliams/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && stow {bash,readline,tmux,vim}
```

Longer:

```sh
$ git clone --recurse-submodules https://github.com/jamespwilliams/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ stow {zsh,readline,tmux,vim}

# Example: uninstall vim configuration
$ stow -D vim

# Example: reinstall vim configuration
$ stow -R vim
```

