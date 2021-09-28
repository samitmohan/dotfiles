"Basic Commands

filetype plugin indent on
syntax on
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoread
set nohlsearch 
inoremap { {<CR>}<Esc>O
set softtabstop=0
set expandtab
set nobackup
set noswapfile
set nowrap
set hls
set is
set cb=unnamed
set ts=4
set sw=4
set si
set nu
inoremap jk <ESC>
inoremap B ^
set ai
set ruler
set noerrorbells
noremap <TAB> %
set autochdir

" Nerd Tree built in VIM
" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        if expl_win_num != -1
            let cur_win_nr = winnr()
            exec expl_win_num . 'wincmd w'
            close
            exec cur_win_nr . 'wincmd w'
            unlet t:expl_buf_num
        else
            unlet t:expl_buf_num
        endif
    else
        exec '1wincmd w'
        Vexplore
        let t:expl_buf_num = bufnr("%")
    endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of browser
"let g:netrw_brows_split = 4
"let g:netrow_altv = 1

" Default to tree mode
let g:netrw_liststyle = 3

"Template

autocmd BufNewFile *.cpp -r ~/Desktop/Code/template.cpp

"Run C++ & Python

noremap <F7> <ESC> :w !python3 <CR>
noremap <F8> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F8> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 -O2 -Wall % -o %:r<CR>
noremap <F10> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
inoremap <F10> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
noremap <F12> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F12> <ESC> :w <CR> :!clang++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>

"Plugins

call plug#begin('~/.vim/plugged')

Plug 'wakatime/vim-wakatime'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'jiangmiao/auto-pairs'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

call plug#end()

"Custom Config
let g:session_autoload="yes"
let g:session_autosave="yes"
let mapleader = " "
map <C-t> :terminal<CR>
map <C-v> :vertical terminal<CR>

"FZF
nnoremap <leader><space> :Files <CR>
nnoremap <leader>ff :Rg<CR>
inoremap <expr> <c-x><c-f> fzf#vim#complete#path(
    \ "find . -path '*/\*' -prune -o -print \| sed '1d;s:^..::'",
    \ fzf#wrap({'dir': expand('%:p:h')}))

if has('vim')
au! TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
au! FileType fzf tunmap <buffer> <Esc>
endif
command! -bang -nargs=*  All
  \ call fzf#run(fzf#wrap({'source': 'rg --files --hidden --no-ignore-vcs --glob "!{node_modules/*,.git/*}"', 'down': '40%', 'options': '--expect=ctrl-t,ctrl-x,ctrl-v --multi --reverse' }))


"Comment stuff
:map <C-c> <plug>NERDCommenterToggle

"FileNavigation
noremap <F1> <ESC>:tabprev <CR>
vnoremap <F1> <ESC>:tabprev <CR>
inoremap <F1> <ESC>
command! Prog :e ~/Desktop/Code
noremap <Leader>n :vs 
noremap <Leader>o <C-O>
noremap <Leader>i <C-I>
noremap <Leader>s :source ~/.vimrc <CR>
