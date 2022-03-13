syntax on
imap jk <ESC>
set tabstop=4
set shiftwidth=4
set expandtab
set si
set ai
set hlsearch
set ruler
set nobackup
set nowb
set noswapfile
filetype indent off
colorscheme emacs
set lazyredraw
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
noremap <C-r> <ESC> :w <CR> :!g++ -std=c++17 -o %< % && ./%< <CR>
inoremap <C-r> <ESC> :w <CR> :!g++ -std=c++17 -o %< % && ./%< <CR>
