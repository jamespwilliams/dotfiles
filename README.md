# dotfiles

Install by running:

```
curl https://raw.githubusercontent.com/jamespwilliams/dotfiles/master/.scripts/update.sh | bash
```

### Details

This repo contains configuration for some of the tools I use. Currently, I use `tmux` and `vim` a lot, which is reflected here. I've tried to keep my dotfiles (a) relatively minimal, and (b) as easy to install as possible. To that end, it's possible to install these with one command, which is useful if I'm working on many remote machines. 

The `update.sh` clones this bare git repo into the home folder, and does some installation of other packages I find useful. It then sets up an alias for running `git` on this repo as `config`, so configuration can be updated by running `config add ...`, `config commit -m "..."`, `config push` etc.

Machine-specific configuration is to be placed in `*.local` files, to keep the config in this repo machine-independent.

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
