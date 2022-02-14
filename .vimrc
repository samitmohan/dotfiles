highlight Comment ctermfg=green
set clipboard=unnamed
imap jk <Esc>
autocmd BufNewFile *.cpp 0r ~/Desktop/library/template.cpp
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set number
set si
set hlsearch
set ruler
