" __  ____   __ __     _____ __  __ ____   ____
"|  \/  \ \ / / \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /   \ \ / / | || |\/| | |_) | |
"| |  | | | |     \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|      \_/  |___|_|  |_|_| \_\\____|
" Author: @KiteAB
" GitHub: https://github.com/KiteAB/.config

" Auto load for first time uses
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let &t_ut=''
set autochdir

let mapleader=" "
syntax on
set number
set cursorline
set noexpandtab
set autoindent
set list
set relativenumber
set listchars=tab:\|\ ,trail:▫
set wrap
set showcmd
set wildmenu
set tabstop=2
set shiftwidth=2
set softtabstop=2

set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast
set lazyredraw
set visualbell
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
set colorcolumn=80
set updatetime=1000
set virtualedit=block

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:ternimal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set laststatus=2

" open my vimrc at any time
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>
"noremap <LEADER>q :q!<CR>
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

"noremap j h
"noremap i k
"noremap k j
"noremap J 5h
"noremap I 5k
"noremap K 5j
"noremap L 5l

noremap n i
noremap N I

noremap S :w<CR>
noremap Q :q<CR>
noremap <C-q> :qa<CR>
map R :source $MYVIMRC<CR>
map ; :

nnoremap M y$
vnoremap M "+y

nnoremap < <<
nnoremap > >>
noremap <LEADER>dw /\(\<\w\+\)\_s*\1

nnoremap <LEADER>tt :%s/    /\t/g
vnoremap <LEADER>tt :s/    /\t/g
noremap <silent> <LEADER>o za

noremap \g :Git 
noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>


map <LEADER>sc :set spell!<CR>

noremap <silent> i k
noremap <silent> j h
noremap <silent> k j
noremap <silent> l l
noremap <silent> gi gk
noremap <silent> gk gj

noremap <silent> I 5k
noremap <silent> K 5j

noremap <silent> J 0
noremap <silent> L $

noremap W 5w
noremap B 5b

noremap h e

noremap <C-I> 5<C-y>
noremap <C-K> 5<C-e>

inoremap <C-a> <ESC>A

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-w> <S-Right>

noremap <LEADER>w <C-w>w
noremap <LEADER>i <C-w>k
noremap <LEADER>k <C-w>j
noremap <LEADER>j <C-w>h
noremap <LEADER>l <C-w>l

noremap s <nop>

noremap si :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap sj :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>

noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

noremap sh <C-w>t<C-w>K
noremap sv <C-w>t<C-w>H

noremap <LEADER>q <C-w>j:q<CR>

noremap ti :tabe<CR>
noremap tj :-tabnext<CR>
noremap tl :+tabnext
noremap tmj :-tabmove<CR>
noremap tml :+tabmove<CR>



"call plug#begin('~/.vim/plugged')
call plug#begin('~/.config/nvim/plugged')

Plug 'tiagofumo/dart-vim-flutter-layout'
Plug 'RRethy/vim-illuminate'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'KabbAmine/vCoolor.vim'
Plug 'pechorin/any-jump.vim'


"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'numirias/semshi'
Plug 'SirVer/ultisnips'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'honza/vim-snippets'
Plug 'ajmwagar/vim-deus'
Plug 'theniceboy/eleline.vim'

call plug#end()

"let g:SnazzyTransparent = 1
"color snazzy
color deus
let g:airline_theme='deus'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:ter, ./%<
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_broser." % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc

" markdown preview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'google-chrome-stable'
let g:mkdp_echo_preview_url = 1
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" eleline
let g:airline_powerline_fonts = 0
