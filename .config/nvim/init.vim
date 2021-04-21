call plug#begin(stdpath('data') . '/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'dracula/vim', {'as': 'dracula'}
call plug#end()

set termguicolors
colorscheme dracula
let g:lightline = {'colorscheme': 'dracula'}

set number
set relativenumber
set noshowmode
set cursorline
set mouse=a
set clipboard+=unnamedplus
set splitbelow
set splitright
set undofile
set undodir=/tmp/nvim/undo
set wildmode=longest:full

set shiftround
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" autocmd BufRead,BufNewFile *.html,*.css,*.js,*.json,*.vue setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Auto insert mode when terminal is opened
autocmd BufEnter term://* startinsert

let mapleader=" "

" Allow shifting selection repeatedly
vnoremap < <gv
vnoremap > >gv

" Escape turns off highlighting from find and replace operations
nnoremap <silent> <ESC> <ESC>:noh<CR>

" Don't save a single character to clipboard
nnoremap x "_x

" When in visual, d will only delete because x can cut
vnoremap d "_d

" Yank to end
nnoremap Y y$

" Don't overwrite clipboard register with selected text
vnoremap p "_dP

" Window navigation
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l

" Escape from terminal-mode
tnoremap <ESC> <C-\><C-N>

" FZF
nnoremap <Leader>f :FZF<CR>

" Terminal
nnoremap <Leader>t :12split term://bash<CR>

" Compile in terminal
nnoremap <Leader>c :w<CR>:12split term://make<CR>
