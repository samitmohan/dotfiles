syntax enable
au GUIEnter * simalt ~x
set hls
set is
set cb=unnamed
set ts=4
set sw=4
set si
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
set nu
set backspace=indent,eol,start
set noshowmode
set noruler
set laststatus=0
set noshowcmd
set cmdheight=1
colorscheme peachpuff
set ruler
set mouse=a
filetype plugin indent on
set errorformat^=%-GIn\ file\ included\ %.%#
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'
Plugin 'maralla/completor.vim'
Plugin 'searleser97/cpbooster.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vhdirk/vim-cmake'

call vundle#end()
nnoremap gA :%y+<CR>

map <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

inoremap jk <ESC>
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

let mapleader=" "
noremap <Leader>t :botright vertical terminal<CR>
autocmd filetype cpp nnoremap <Leader>r  :w <bar> !g++  -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <Leader>r  :w <bar> :!gcc % && ./a.out <CR>
autocmd filetype python nnoremap <Leader>r :w <bar> !python % <CR>

let g:ctrlp_working_path_mode = 0
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let delimitMate_expand_cr = 1
autocmd FileType tex let b:delimitMate_autoclose = 0

inoremap <expr> <Tab> pumvisible() ? "\<C-Y>" : "\<Tab>"
let g:completor_complete_options='menuone,noinsert'
let g:completor_completion_delay=0


