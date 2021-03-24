call plug#begin(stdpath('data') . '/plugged')
Plug 'itchyny/lightline.vim'
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
