"___  _____   __  _   _  _____ ___  _________  _____ 
"|  \/  |\ \ / / | | | ||_   _||  \/  || ___ \/  __ \
"| .  . | \ V /  | | | |  | |  | .  . || |_/ /| /  \/
"| |\/| |  \ /   | | | |  | |  | |\/| ||    / | |    
"| |  | |  | |   \ \_/ / _| |_ | |  | || |\ \ | \__/\
"\_|  |_/  \_/    \___/  \___/ \_|  |_/\_| \_| \____/

" Author: @KiteAB


let mapleader=" "
syntax on
set number
set cursorline
set noexpandtab
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set relativenumber
"set norelativenumber
set wrap
set showcmd
set wildmenu

set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set tw=0

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>
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
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'connorholyday/vim-snazzy'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for' :['markdown', 'vim-plug'] }
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'numirias/semshi'
Plug 'SirVer/ultisnips'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'honza/vim-snippets'
Plug 'ajmwagar/vim-deus'

call plug#end()

let g:SnazzyTransparent = 1
color snazzy
"color deus
let g:airline_theme='deus'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
