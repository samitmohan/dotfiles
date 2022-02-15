highlight Comment ctermfg=green
set nu
colorscheme peachpuff
set clipboard=unnamed
imap jk <Esc>
syntax on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
noremap <TAB> %
set ai
set si
set hlsearch
set ruler
map <C-r> :!g++ % -o %:r && ./%:r <CR>
map <C-b> :!g++ % -o %:r <CR>
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
call plug#end()
let delimitMate_expand_cr = 1
