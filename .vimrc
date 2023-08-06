set nocompatible
filetype off

"Text editor
set shiftwidth=2
set expandtab
set tabstop=2
filetype plugin indent on
syntax on

"Numbering in Vim
set ruler
set number

"Options for NERDTree
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"

set backspace=indent,eol,start

" Colorscheme
set background=dark
packadd! dracula
syntax enable
colorscheme dracula

set colorcolumn=80

