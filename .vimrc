set nocompatible
filetype off


" Set up pathogen
execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end() 

"Text editor
set shiftwidth=2
set expandtab
set tabstop=2
filetype plugin indent on

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

" Settings for NERD Commenter
let g:NERDSpaceDelims = 1
"let g:NERDCommentEmptyLines = 1
" let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'

set colorcolumn=80

"" Colorscheme
syntax enable
packadd! dracula
colorscheme dracula

"Enable syntax for Solarized
" set background=dark
" colorscheme solarized
