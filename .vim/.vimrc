set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

call vundle#end()
syntax enable

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

set showmode
set backup
set backupdir=/private/tmp
set dir=/private/tmp

set number

set hlsearch
set incsearch
set ignorecase

set expandtab ts=4 sw=4 ai

"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"set termguicolors
"set t_Co=256
colorscheme onehalflight


inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

filetype plugin indent on
