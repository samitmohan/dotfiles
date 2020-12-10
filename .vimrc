syntax on

set autowrite

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'c.vim'
Plugin 'morhetz/gruvbox'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'hdima/python-syntax'
Plugin 'prettier/vim-prettier'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()                
map <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
inoremap jk <ESC>
nnoremap <leader><space> :nohlsearch<CR>
set incsearch
" move to beginning/end of line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
let mapleader=","
set tabstop=4
set expandtab
set shiftwidth=4
map <C-a> <esc>ggVG<CR>
autocmd filetype cpp nnoremap <F5> :w <bar> !g++  -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <F5> :w <bar> :!gcc % && ./a.out <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python % <CR>
let g:ctrlp_working_path_mode = 0
set ai
set number
set hlsearch
set ruler
colorscheme peachpuff
set background=dark
set softtabstop=4
set backspace=indent,eol,start
filetype plugin indent on
set smartindent
set noswapfile

