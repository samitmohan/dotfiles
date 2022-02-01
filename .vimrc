imap jk <ESC>
noremap <TAB> %
set clipboard=unnamed
set smarttab
syntax on
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
set tabstop=4
set shiftwidth=4
set expandtab
set si
set ai
set number
set hlsearch
highlight Comment ctermfg=green
set nolazyredraw "Don't redraw while executing macros"
set ruler
set nobackup
set nowb
set noswapfile
nmap j gj
nmap k gk
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
call plug#end()
nmap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']
let NERDTreeQuitOnOpen = 1
