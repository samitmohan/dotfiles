syntax on
highlight Comment ctermfg=green
set backspace=indent,eol,start
set expandtab
set nobackup
set noswapfile
set hls
set ts=4
set sw=4
set nu
inoremap jk <ESC>
set ai
set ruler
noremap <TAB> %
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
autocmd BufNewFile *.cpp -r ~/Desktop/Code/template.cpp
noremap <F7> <ESC> :w !python3 <CR>
noremap <F8> <ESC> :w <CR> :!clang++ -std=c++17 -o %< % && ./%< <CR>
inoremap <F8> <ESC> :w <CR> :!clang++ -std=c++17 -o "%<" "%" && "./%<" <CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -o %:r<CR>
noremap <F12> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F12> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
call plug#end()
let mapleader = " "
:map <C-c> <plug>NERDCommenterToggle
noremap <Leader>n :vs 
noremap <Leader>o <C-O>
noremap <Leader>i <C-I>
