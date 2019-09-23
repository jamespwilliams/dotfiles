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
$ stow {bash,readline,tmux,vim}

# Example: uninstall vim configuration
$ stow -D vim

# Example: reinstall vim configuration
$ stow -R vim
```

### Links

##### Vim Plugins

- [NerdTREE](https://github.com/scrooloose/nerdtree) - File explorer for Vim. Super useful when working on larger projects. Strays slightly from my minimal agenda.

- [base16-vim](https://github.com/chriskempson/base16-vim) - Allows usage of base16 colour schemes in vim (more on this later)

- [lightline](https://github.com/itchyny/lightline.vim/) - Adds a minimal status bar at the bottom of the screen to show which mode Vim is in.

- [lightline-bufferline](https://github.com/mengelbrecht/lightline-bufferline) - Adds a buffer line at the top of the screen to show which buffers I have open. Very useful, particularly in combination with keybindings allowing me to cycle, or directly go to certain buffers in the bufferline.

- [base16-lightline](https://github.com/daviesjamie/vim-base16-lightline) - A nice minimal theme for lightline, designed for use with base16.

##### Other Tools

- [grc](https://github.com/garabik/grc) - Generic Coloriser - adds syntax highlighting to many commands

- [base16-shell](https://github.com/chriskempson/base16-shell) - Really great tool for theming terminals without having to manually go into the preferences of whichever terminal I'm working in. Has a massive array of themes, works seamlessly with Vim (with base16-vim), and most importantly works painlessly. Themes can be switched by running the `base16-xyz` command, made possible by adding aliases to my `bash_profile`. Requires a 256-colour terminal, like [iTerm2](https://www.iterm2.com/).
