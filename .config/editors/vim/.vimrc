" Enable syntax highlighting
syntax on

" Show line under cursor
set cursorline
" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Show current mode
set showmode

" Show the line relative number
" set relativenumber

" Set numbers
set number

" Auto indent tabs
set autoindent

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

set splitbelow
set splitright

" Highlighting the searched words
" set hlsearch
":echo ">^.^<"

" Split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Enable folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za

" PEP 8 identation
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent smarttab fileformat=unix

" Other languages
au BufNewFile,BufRead *.html,*.css,*.js,*.yml set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab

" Flagging unnecessary whitespaces
autocmd BufWritePre *js %s/\s\+$//e

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
  
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" Syntastic plugins
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Syntastic recomended configurations
set laststatus=2
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#CursorIM#
set statusline+=%R "readonly flag
set statusline+=%M "modified [+] flag
set statusline+=%#Cursor#
set statusline+=%#CursorLine#
set statusline+=\ %t " short file name
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%=
set statusline+=%#CursorLine#
set statusline+=\ %Y\ 
set statusline+=%#CursorIM#
set statusline+=\ %3l:%-2c\ 
set statusline+=%#Cursor#
set statusline+=\ %3p%%\ 

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

colorscheme morning
