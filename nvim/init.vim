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

let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/_machine_specific.vim'))
	let has_machine_specific_file = 0
	silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
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

source ~/.config/nvim/md-snippets.vim
autocmd BufRead,BufNewFile *.md setlocal spell

nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>
inoremap <C-u> <ESC>lx$p

noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res+10<CR>:term<CR>
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l
noremap ` ~
noremap <C-c> zz
autocmd BufEnter * silent! ;cd %:p:h
noremap tx :r !figlet

noremap <LEADER>- :lN<CR>
noremap <LEADER>= :lne<CR>

noremap \s :%s//g<left><left>


"call plug#begin('~/.vim/plugged')
call plug#begin('~/.config/nvim/plugged')

Plug 'tiagofumo/dart-vim-flutter-layout'
Plug 'RRethy/vim-illuminate'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'KabbAmine/vCoolor.vim'
Plug 'pechorin/any-jump.vim'
Plug 'airblade/vim-rooter'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'junkblocker/git-time-lapse'
Plug 'theniceboy/vim-calc'
Plug 'bling/vim-bufferline'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase'}
Plug 'junegunn/fzf.vim'
Plug 'kevinhwang91/rnvimr'
Plug 'liuchengxu/vista.vim'
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python --enable-go'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wellle/tmux-complete.vim'
Plug 'theniceboy/vim-snippets'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'theniceboy/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }
Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'lervag/vimtex'
Plug 'OmniSharp/omnisharp-vim'
Plug 'ctrlpvim/ctrlp.vim' , { 'for': ['cs', 'vim-plug'] }
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'pangloss/vim-javascript', { 'for' :['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }
Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': 'UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
Plug 'tweekmonster/braceless.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'keith/swift.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }
Plug 'theniceboy/bullets.vim'
Plug 'jceb/vim-orgmode', {'for': ['vim-plug', 'org']}

Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'scrooloose/nerdcommenter'
Plug 'theniceboy/antovim'
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'
Plug 'junegunn/vim-after-object'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-capslock'
Plug 'easymotion/vim-easymotion'
Plug 'Konfekt/FastFold'
Plug 'svermeulen/vim-subversive'
Plug 'theniceboy/argtextobj.vim'
Plug 'rhysd/clever-f.vim'

Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/goyo.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }
Plug 'osyo-manga/vim-anzu'

Plug 'itchyny/calendar.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'mg979/vim-xtabline'
Plug 'wincent/terminus'

Plug 'lambdalisue/suda.vim'
Plug 'makerj/vim-pdf'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'roxma/nvim-yarp'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'SirVer/ultisnips'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ajmwagar/vim-deus'
Plug 'theniceboy/eleline.vim'

call plug#end()

set lazyredraw
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

hi NonText ctermfg=gray guifg=grey10
let g:airline_powerline_fonts = 0

let g:gitgutter_signs = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_preview_win_floating = 1
autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap H :GitGutterPreviewHunk<CR>
nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
nnoremap <LEADER>g= :GitGutterNextHunk<CR>

nnoremap gb :Gblame

" coc settings
let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-tslint', 'coc-lists', 'coc-git', 'coc-explorer', 'coc-pyright', 'coc-sourcekit', 'coc-translator', 'coc-flutter', 'coc-todolist', 'coc-yaml', 'coc-tasks', 'coc-actions', 'coc-diagnostic']

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]| =~ '\s'
endfunction
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.') - 1
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-o> coc#refresh()

nnoremap <c-c> :CocCommand<CR>

xmap kf <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap kf <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap tt :CocCommand explorer<CR>

nmap ts <Plug>(coc-translator-p)
function! s:cocActionsOpenFromSelected(type) abort
	execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
nnoremap <leader>tn :CocCommand todolist.create<CR>
nnoremap <leader>tl :CocList todolist<CR>
nnoremap <leader>tu :CocCommand todolist.download<CR>:CocCommand todolist.upload<CR>
noremap <silent> T :CocList tasks<CR>

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

" MarkdownPreview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
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
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" vim-table-mode
noremap <LEADER>tm :TableModeToggle<CR>
let g:table_mode_cell_text_object_i_map = 'k<Bar>'

" fzf
set rtp+=/usr/local/opt/fzf
noremap <C-p> :Files<CR>
noremap <C-f> :Rg<CR>
noremap <C-h> :History<CR>
noremap <C-l> :Lines<CR>
noremap <C-w> :Buffers<CR>
noremap <leader>; :History:<CR>

let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color-always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:list_buffers()
	redir => list
	silent ls
	redir END
	return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
	execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
	\ 'source': s:list_buffers(),
	\ 'sink*' { lines -> s:delete_buffers(lines) },
	\ 'options': '--multi --reverse --bind ctrl-a:select-all+appect'
\ }))

noremap <c-d> :BD<CR>

let g:fzf_layout = { 'window': { 'width':0.9, 'height': 0.7 } }

let g:ctrlp_map = ''
let g:ctrlp_cmd = 'CtrlP'


let g:bookmark_no_default_key_mappings = 1
nmap mt <Plug>BookmarkToggle
nmap ma <Plug>BookmarkAnnotate
nmap ml <Plug>BookmarkShowAll
nmap mi <Plug>BookmarkNext
nmap mn <Plug>BookmarkPrev
nmap mC <Plug>BookmarkClear
nmap mX <Plug>BookmarkClearAll
nmap mu <Plug>BookmarkMoveUp
nmap me <Plug>BookmarkMoveDown
nmap <Leader>g <Plug>BookmarkMovetoLine
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_highlight_lines = 1
let g:bookmark_manage_per_buffer = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_center = 1
let g:bookmark_auto_close = 1
let g:bookmark_location_list = 1


noremap L :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> i <plug>UndotreeNextState
	nmap <buffer> k <plug>UndotreePreviousState
	nmap <buffer> I 5<plug>UndotreeNextState
	nmap <buffer> K 5<plug>UndotreePreviousState
endfunc


let g:VM_leader = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps = {}
let g:VM_custom_motions  = {'n': 'h', 'i': 'l', 'u': 'k', 'e': 'j', 'N': '0', 'I': '$', 'h': 'e'}
let g:VM_maps['i']         = 'k'
let g:VM_maps['I']         = 'K'
let g:VM_maps['Find Under']         = '<C-k>'
let g:VM_maps['Find Subword Under'] = '<C-k>'
let g:VM_maps['Find Next']         = ''
let g:VM_maps['Find Prev']         = ''
let g:VM_maps['Remove Region'] = 'q'
let g:VM_maps['Skip Region'] = '<c-n>'
let g:VM_maps['Undo']      = 'l'
let g:VM_maps['Redo']      = '<C-r>'


noremap <LEADER>f :F  **/*<left><left><left><left><left>
let g:far#mapping = {
		\ "replace_undo" : ["l"]
		\ }


let g:bullets_enabled_file_types = [
			\ 'markdown',
			\ 'text',
			\ 'gitcommit',
			\ 'scratch'
			\]


noremap <c-t> :silent! Vista finder coc<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸"]
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
function! NearestMethodOrFunction() abort
	return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

noremap <LEADER>gi :FzfGitignore<CR>

let g:tex_flavor = "latex"
inoremap <c-n> <nop>
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
let g:UltiSnipsJumpBackwardTrigger="<c-n>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', $HOME.'/.config/nvim/plugged/vim-snippets/UltiSnips/']
silent ! au BufEnter,BufRead,BufNewFile * silent! unmap <c-r>
augroup ultisnips_no_auto_expansion
    au!
    au VimEnter * au! UltiSnips_AutoTrigger
augroup END


let g:vimtex_view_general_viewer = 'llpp'
let g:vimtex_mappings_enabled = 0
let g:vimtex_text_obj_enabled = 0
let g:vimtex_motion_enabled = 0
let maplocalleader=' '


noremap \\ :Calendar -view=clock -position=here<CR>
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
augroup calendar-mappings
	autocmd!
	autocmd FileType calendar nmap <buffer> i <Plug>(calendar_up)
	autocmd FileType calendar nmap <buffer> j <Plug>(calendar_left)
	autocmd FileType calendar nmap <buffer> k <Plug>(calendar_down)
	autocmd FileType calendar nmap <buffer> l <Plug>(calendar_right)
	autocmd FileType calendar nmap <buffer> <c-i> <Plug>(calendar_move_up)
	autocmd FileType calendar nmap <buffer> <c-j> <Plug>(calendar_move_left)
	autocmd FileType calendar nmap <buffer> <c-k> <Plug>(calendar_move_down)
	autocmd FileType calendar nmap <buffer> <c-l> <Plug>(calendar_move_right)
	autocmd FileType calendar nmap <buffer> n <Plug>(calendar_start_insert)
	autocmd FileType calendar nmap <buffer> N <Plug>(calendar_start_insert_head)
	autocmd FileType calendar nunmap <buffer> <C-n>
	autocmd FileType calendar nunmap <buffer> <C-p>
augroup END


set statusline=%{anzu#search_status()}
nnoremap = n
nnoremap - N


nnoremap \f :Autoformat<CR>
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_do_shade = 0
let g:EasyMotion_smartcase = 1
map ' <Plug>(easymotion-bd-f)
nmap ' <Plug>(easymotion-bd-f)


map <LEADER>gy :Goyo<CR>
let g:vim_jsx_pretty_colorful_config = 1


nmap zuz <Plug>(FastFoldUpdate)
let g:fastold_savehook = 1
let g:fastold_fold_command_suffixes =  ['x', 'X','a', 'A', 'o', 'O', 'c', 'C']
let g:fastold_fold_movement_commands = [']z', '[z', 'ze', 'zu']


xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')


let g:rainbow_active = 1
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1
noremap to :XTabCycleMode<CR>
noremap \p :XTabInfo


cnoreabbrev sudowrite w suda://%
cnoreabbrev sw w suda://%

let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
	execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
			\   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
			\   'dowm': 20,
			\   'sink': function('<sid>read_template_into_buffer')
			\ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=☛ texthl=Normal
sign define vimspectorBPDisabled text=☞ texthl=Normal
sign define vimspectorPC text=🔶 texthl=SpellBad


let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text = 'TOC'
let g:vmc_fence_closing_text = '/TOC'

let g:rnvimr_ex_enable = 1
let g:rnvimr_pick_enable = 1
nnoremap <silent> R :RnvimrSync<CR>:RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': &columns,
            \ 'height': &lines,
            \ 'col': 0,
            \ 'row': 0,
            \ 'style': 'minimal' }
let g:rnvimr_presets = [{'width': 1.0, 'height': 1.0}]


let g:Illuminate_delay = 750
hi illuminateWord cterm=undercurl gui=undercurl

let g:rooter_patterns = ['__vim_project_root', '.git/']


noremap gp :AsyncRun git push<CR>
let g:asyncrun_open = 6

exec "nohlsearch"
if has_machine_specific_file == 0
	exec "e ~/.config/nvim/_machine_specific.vim"
endif
