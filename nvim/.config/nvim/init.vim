set nocompatible
set belloff=all

" For netrw (technically a plugin, but comes preinstalled
" with Vim):
filetype indent plugin on
syntax enable

packloadall

" fzf:
set rtp+=~/.fzf

" Set up backspacing to mirror the usual backspace in IDEs:
set backspace=indent,eol,start

" Expand tabs into spaces, and auto-indent:
set expandtab ts=4 sw=4 ai

let maplocalleader=' '
let mapleader=' '

" Show commands as they are being typed, and show current mode:
set showcmd
set showmode

" Use relative file numbering:
set relativenumber

" Highlight searches incrementally:
set hlsearch
set incsearch

" If no capitals are in search query, treat the query as case 
" insensitive. If capitals are present, treat the query as case
" sensitive:
set smartcase
set ignorecase

" Don't redraw in the middle of macro execution (makes things
" faster):
set lazyredraw

" Allow edited buffers to be hidden rather than forcing
" them to be saved or abandoned:
set hidden

" Start scrolling when cursor is 5 lines before the end of the file.
set scrolloff=5

" turn hybrid line numbers on
set number relativenumber
set nu rnu

" Display the statusbar at the bottom of the screen:
set laststatus=2
set ruler

" Don't offer completions from included files in autocomplete:
set complete-=i

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

set autoindent

set textwidth=120
set colorcolumn=120

" Tweaks for browsing with netrw
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

nnoremap <Right> :bn<CR>
nnoremap <Left> :bp<CR>
nnoremap <Up> :ls<CR>:b
nnoremap <Leader>d :bd<CR>

" fzf bindings
nnoremap <C-p> :Files<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <C-g> :Rg<CR>
nnoremap <Leader>r :Rg<CR>
nnoremap <Leader>b :Buffers<CR>:b

cmap www w !sudo tee %

nnoremap Q @@
" Delete without clobbering the unnamed register
nnoremap s "_d

augroup fts
    autocmd!
    autocmd FileType markdown setlocal textwidth=80
    autocmd FileType markdown setlocal colorcolumn=80
    autocmd FileType text set textwidth=80
    autocmd FileType text set colorcolumn=80

    autocmd FileType perl setlocal textwidth=80
    autocmd FileType perl setlocal colorcolumn=80
    " https://wiki.netcraft.com/index.php/Perl_Coding_Guidelines
    autocmd FileType perl setlocal tabstop=4           " set hard tabstop size to 4
    autocmd FileType perl setlocal softtabstop=4       " set soft tabstop size to 4
    autocmd FileType perl setlocal shiftwidth=4        " set size of an 'indent' to 4
    autocmd FileType perl setlocal shiftround          " when shifting, always use a multiple of shiftwidth
    autocmd FileType perl setlocal autoindent          " automatically indent new lines
    autocmd FileType perl setlocal expandtab           " use spaces instead of <tab>s
    autocmd FileType perl setlocal smarttab            " make adding/removing tabs (spaces) smarter
augroup END

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set t_Co=256
set termguicolors

set background=dark
colorscheme bat

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,
  },
}
EOF

packloadall
