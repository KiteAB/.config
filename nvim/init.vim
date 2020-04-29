let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set scrolloff=5

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

noremap j h
noremap i k
noremap k j
noremap J 5h
noremap I 5k
noremap K 5j
noremap L 5l

noremap n i

map s <nop>
map h <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map ; :

map <LEADER>sc :set spell!<CR>

"call plug#begin('~/.vim/plugged')
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'connorholyday/vim-snazzy-themes'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for' :['markdown', 'vim-plug'] }
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'numirias/semshi'
Plug 'SirVer/ultisnips'

call plug#end()

let g:SnazzyTransparent = 1
color snazzy
