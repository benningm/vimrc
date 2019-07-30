set shell=/bin/bash

execute pathogen#infect()
syntax on
filetype plugin indent on

let g:syntastic_check_on_open=0
let g:syntastic_enable_signs=1
let g:syntastic_ruby_checkers=['rubocop','mri']

syntax enable
colorscheme monokai

if has('gui_running')
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 14
"else
" set background=light
endif

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set noshowmode

set modeline
set modelines=5

set ts=2
set shiftwidth=2
set expandtab

set autoread
set so=5
set wildmenu
set ruler

set hlsearch
set incsearch 

set showmatch

set noerrorbells
set novisualbell

set mouse=a

set updatetime=500

" tuning for large files
let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile
 autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

function LargeFile()
 set eventignore+=FileType
 setlocal bufhidden=unload
 setlocal buftype=nowrite
 setlocal undolevels=-1
 autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, so some options are changed (see .vimrc for details)."
endfunction

let g:deoplete#enable_at_startup = 1
