syntax enable
"Change cursor (Like in nvim)
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Optionally reset the cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
set ruler
nnoremap gA :%y+<CR>
set mouse=a
set autoread
set background=light
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-sleuth'
Plugin 'Chiel92/vim-autoformat'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'delimitMate.vim'
Plugin 'prettier/vim-prettier'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
" All of your Plugins must be added before the following line
call vundle#end()
map <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
colorscheme gruvbox
inoremap jk <ESC>
set termguicolors
nnoremap <leader><space> :nohlsearch<CR>
set incsearch
" move to beginning/end of line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
set nu
autocmd FileType vim let b:vcm_tab_complete = 'vim'
let mapleader=","
set tabstop=4
set expandtab
set shiftwidth=4
autocmd filetype cpp nnoremap <F5> :w <bar> !g++  -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <F5> :w <bar> :!gcc % && ./a.out <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python % <CR>
let g:ctrlp_working_path_mode = 0
set ai
set hlsearch

map <C-a> <esc>ggVG<CR>
set softtabstop=4
filetype plugin indent on
set smartindent
set noswapfile
set hls
set is
set ts=4
set sw=4
set si
set nu
set backspace=indent,eol,start
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'

