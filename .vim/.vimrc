set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'itchyny/lightline.vim'
Plugin 'danielwe/base16-vim'
Plugin 'daviesjamie/vim-base16-lightline'

call vundle#end()

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256  
  source ~/.vimrc_background
endif


if !has("gui_running")
    set t_Co=256
    set term=screen-256color
endif


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

" Things to stop me being lazy:
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Lightline:
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'base16',
      \ }

filetype plugin indent on
