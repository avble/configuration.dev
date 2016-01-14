set nocompatible              " be iMproved, required
filetype off                  " required

" Set runtime environment 
set rtp+=~/.vim/bundle/Vundle.vim

execute pathogen#infect()

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'VundleVim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
" Plugin 'tpope/vim-fugitive'
" Plugin 'git://github.com/tpope/vim-fugitive.git'

" All of your Plugins must be added before the following line
call vundle#end() 


colorscheme twilight256
set hlsearch
set incsearch


filetype plugin on
filetype indent on
set number
set tabstop=4  

set shiftwidth=4  
set softtabstop=4 
syntax on 

set ignorecase 
set sc 

" mapping  
let mapleader=","
let maplocalleader="'"


" == General command 
map <Leader>tag :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>


" == File menu 
" = open a file 
" = close a file 
:map <Leader>w :Bclose<CR>

" == plugin mapping 
:map <Leader>u :cn<CR>
:map <Leader>d :cp<CR>

" == Edit 
" Copy to X CLIPBOARD
:map <Leader>c :w !xclip -selection clipboard -i<CR><Esc>
" Paste from X CLIPBOARD
:map <Leader>p :r!xclip -selection clipboard -o<CR>

" === Searching 
" === NERD-tree 
:map <Leader>n :NERDTreeToggle<CR>

" ===== Ctrl-P setting 
let g:ctrlp_map = '<c-p>'
:map <C-f> :CtrlPBuffer <CR>
:map <C-f><C-f> :CtrlPMixed <CR>
:map <C-f><C-f><C-f> :CtrlPMRU <CR>

" === Taglist 
let Tlist_Use_Right_Window = 1
:map <Leader>s :TlistToggle<CR>
" MICS


" === Omnicomplete 
set omnifunc=syntaxcomplete#Complete

" == Other utilities key-binding 



