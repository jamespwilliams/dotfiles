set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
"
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'micha/vim-colors-solarized'
"Plugin 'ayu-theme/ayu-vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

set showcmd
set showmode

set relativenumber

set hlsearch
set incsearch
set ignorecase

set expandtab ts=4 sw=4 ai

syntax on
colo delek
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

filetype plugin indent on
