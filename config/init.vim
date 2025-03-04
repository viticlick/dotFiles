"
" To use this file, create a symbolic link with
" ln -s ~/.dotfiles/config/init.vim ~/.config/nvim/init.vim

set cursorline 		" Show line under cursor
set wildmenu		" Better command-line completition
set showcmd		" Show partial commands in last line of the screen
set showmode		" Show current mode
"set relativenumber	" Show the relative number line
set number		" Set line numbers
set autoindent		" Auto iindent tabs


" PEP 8 identation
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=119 expandtab autoindent smarttab fileformat=unix

" 80 columns for markdown
au BufRead,BufNewFile *.md setlocal textwidth=120

" Other languages
au BufNewFile,BufRead *.html,*.css,*.js,*.yml set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab

" Flagging unnecessary whitespaces
autocmd BufWritePre *js %s/\s\+$//e

" Split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>


" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>


" Enable folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za

filetype plugin on	" Mandatory for VimWiki
set nocompatible	" Mandatory for VimWiki

set clipboard=unnamed


" PLUGINS
call plug#begin('~/.local/share/nvim/plugged')

Plug 'preservim/nerdtree' 	" Shows filesystem tree

Plug 'vimwiki/vimwiki' 		" VimWiki enables an easy tool to create a wiki

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim' 	" bottom line plugin

Plug 'vim-syntastic/syntastic'	" Syntastic plugin

Plug 'tpope/vim-rails' " RoR plugin

Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Use release branch (recommend)

Plug 'tpope/vim-endwise' " Close ruby blocks with end token

call plug#end()

nnoremap <silent> <C-n> :FZF<CR>
nnoremap <silent> <C-f> :Rg<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>

" Vim Wiki
let g:vimwiki_list = [{ 'path': '~/vimwiki/', 'ext': '.md', 'syntax': 'markdown' }]
au FileType vimwiki setlocal shiftwidth=6 tabstop=6 noexpandtab

" Syntastic plugin
" Syntastic recomended configurations
set laststatus=2

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
