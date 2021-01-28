"Basics
syntax enable
set number
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap
set backspace=indent,eol,start
set noshowmode
set noruler
set laststatus=0
set noshowcmd
set cmdheight=1
set ruler
set mouse=a
filetype plugin indent on
"autocmd FileType vim let b:vcm_tab_complete = 'vim'

""ColorScheme + Misc
highlight Comment ctermfg=green
colorscheme peachpuff
set errorformat^=%-GIn\ file\ included\ %.%#
set rtp+=~/.vim/bundle/Vundle.vim

""Plugins
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'maralla/completor.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'searleser97/cpbooster.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vhdirk/vim-cmake'
call vundle#end()

""Copy everything with gA
nnoremap gA :%y+<CR>

""Nerd Tree Ctrl N
map <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

""Escape mode + Begin/End of a line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

"Leader + Split Screen
let mapleader=" "
noremap <Leader>t :botright vertical terminal<CR>

""Compile + Run Python/C/C++ with F5
autocmd filetype cpp nnoremap <Leader>r  :w <bar> !g++  -Wall
-Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <Leader>r  :w <bar> :!gcc % && ./a.out <CR>
autocmd filetype python nnoremap <Leader>r :w <bar> !python % <CR>

""Ctrl P Fizzy Search + Delim
let g:ctrlp_working_path_mode = 0
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let delimitMate_expand_cr = 1
autocmd FileType tex let b:delimitMate_autoclose = 0

""Cursor
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)
""
"""Cursor settings:
""
"""  1 -> blinking block
"""  2 -> solid block 
"""  3 -> blinking underscore
"""  4 -> solid underscore
"""  5 -> blinking vertical bar
"""  6 -> solid vertical bar]]]

"" Select autocomplete item with Tab + No Delay
inoremap <expr> <Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"
let g:completor_complete_options='menuone,noinsert'
let g:completor_completion_delay=0
 
