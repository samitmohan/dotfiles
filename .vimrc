imap jk <ESC>
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set si
set number
set hlsearch
set ruler
highlight Comment ctermfg=green
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
