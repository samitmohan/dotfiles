"for pasting code to terminal -> use :set paste in insert mode, once code pasted, "set nopaste

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
imap jk <ESC>
noremap <TAB> %
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
set clipboard=unnamed
