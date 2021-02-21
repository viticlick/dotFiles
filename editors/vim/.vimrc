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

" 80 columns for markdown
au BufRead,BufNewFile *.md setlocal textwidth=80

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

"" bottom line
Plugin 'itchyny/lightline.vim'

" Auto commit
Plugin 'viticlick/vim-auto-commit'

"" VimWiki
Plugin 'vimwiki/vimwiki'

"" Zettelkasten plugins
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'michal-h21/vim-zettel'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd BufWritePost */wiki_personal/* call AutoCommit()

"" vimwiki
let wiki_1 = {}
let wiki_1.path = '~/wiki_personal'
let wiki_1.path_html = '~/wiki_personal_html'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'
let wiki_2 = {}
let wiki_2.path = '~/wiki_work'
let wiki_2.path_html = '~/wiki_work_html'
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'

let g:vimwiki_list = [wiki_1, wiki_2]

let g:nv_search_paths = ['~/wiki_personal/zettelkasten' ]

" Syntastic recomended configurations
set laststatus=2

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

let g:lightline = { 'colorscheme': 'wombat' }

colorscheme morning

function! ZettelId()
	put =strftime('%Y%m%d%H%M%S')
endfunction
