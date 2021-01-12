syntax enable
set ruler
nnoremap gA :%y+<CR>
set mouse=a
set number
set errorformat^=%-GIn\ file\ included\ %.%#
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-sleuth'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'searleser97/cpbooster.vim'
Plugin 'delimitMate.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
" All of your Plugins must be added before the following line
call vundle#end()
map <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
inoremap jk <ESC>
colorscheme peachpuff

" move to beginning/end of line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
autocmd FileType vim let b:vcm_tab_complete = 'vim'
let mapleader=" "
autocmd filetype cpp nnoremap <F5> :w <bar> !g++  -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <F5> :w <bar> :!gcc % && ./a.out <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python % <CR>
let g:ctrlp_working_path_mode = 0
map <C-a> <esc>ggVG<CR>
filetype plugin indent on
set backspace=indent,eol,start
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'
let delimitMate_expand_cr = 1
autocmd FileType tex let b:delimitMate_autoclose = 0
noremap <Leader>t :botright vertical terminal<CR>
filetype plugin indent on
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

