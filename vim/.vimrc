set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.dotfiles/vim/Vundle.vim

call vundle#begin()

Plugin 'itchyny/lightline.vim'
Plugin 'danielwe/base16-vim'
Plugin 'daviesjamie/vim-base16-lightline'
Plugin 'scrooloose/nerdtree'
Plugin 'mengelbrecht/lightline-bufferline'
Plugin 'junegunn/goyo.vim'

call vundle#end()

set backspace=indent,eol,start

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256  
  source ~/.vimrc_background
endif

if !has("gui_running")
    set t_Co=256
    set term=screen-256color
endif

let mapleader = ","
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

set showcmd
set showmode
set relativenumber
set hlsearch
set incsearch
set hidden
set ignorecase
set expandtab ts=4 sw=4 ai

set scrolloff=5

set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

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
let g:lightline#bufferline#show_number  = 2
set showtabline=2

let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

" Goyo:
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
  endif
  set showmode
  set showcmd
  set scrolloff=5
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

au BufWritePost *.go !gofmt -w %

nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
nnoremap <Leader>n :bnext<CR>
nnoremap <Leader>p :bprevious<CR>
nnoremap <Leader>d :bd
nnoremap <Leader>c :!setxkbmap -option caps:escape 

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

set timeoutlen=1000 ttimeoutlen=0

filetype plugin indent on
