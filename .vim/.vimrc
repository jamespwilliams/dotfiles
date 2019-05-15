set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'danielwe/base16-vim'

call vundle#end()

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256  
  source ~/.vimrc_background
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
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

filetype plugin indent on
