set nocompatible

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
" let g:netrw_list_hide=netrw_gitignore#Hide()
" let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Remappings to assist buffer navigation:
nnoremap <Right> :bn<CR>
nnoremap <Left> :bp<CR>
nnoremap <Up> :ls<CR>:b
nnoremap <Leader>d :bd<CR>

" vim-go bindings
nnoremap <Leader>gi :GoImports<CR>
nnoremap <Leader>gb :GoBuild<CR>
nnoremap <Leader>gt :GoTest<CR>

" fzf bindings
nnoremap <C-p> :Files<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <C-g> :Rg<CR>
nnoremap <Leader>r :Rg<CR>
nnoremap <Leader>b :Buffers<CR>:b

" Inspired by https://www.hillelwayne.com/post/intermediate-vim/:
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

    autocmd FileType perl autocmd BufWritePre <buffer> PerlTidy
augroup END

augroup go2_ft
  au!
  autocmd BufNewFile,BufRead *.go2 set filetype=go
augroup END

augroup fmt
    autocmd!
    autocmd BufWritePre *.ml Neoformat
augroup END

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set t_Co=256
set termguicolors

set background=dark
colorscheme bat

" vim-go
let g:go_fmt_command = "gofumports"
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

" vim-prettier
let g:prettier#config#config_precedence = 'prefer-file'
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#quickfix_auto_focus = 0

let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}

nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

packloadall
