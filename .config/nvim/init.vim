call plug#begin( stdpath('data') . '/plugged')
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
set wildmode=longest:full
set undofile
set undodir=/tmp/nvim/undo

set shiftround
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"autocmd BufRead,BufNewFile *.html,*.css,*.js,*.json,*.vue setlocal tabstop=2 shiftwidth=2 softtabstop=2

"nnoremap <silent> <BS> :noh<CR>
"vnoremap p "_dP
"nnoremap x "_x
"nnoremap d "_d
"vnoremap d "_d
"nnoremap D "_D
"vnoremap D "_D
"nnoremap c "_c
"vnoremap c "_c
"nnoremap dd "_dd
"nnoremap - $
"nnoremap _ "kdd"kp
"nnoremap + "kddk"kP

" Allow shifting selection repeatedly
vnoremap < <gv
vnoremap > >gv
