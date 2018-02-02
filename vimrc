set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-latex'
"Plugin 'tpope/vim-fugitive'
Plugin 'L9'
"Plugin 'git://git.wincent.com/command-t.git'
Plugin 'christoomey/vim-tmux-navigator'
Bundle 'gmarik/vundle'
"Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'flazz/vim-colorschemes'
"Bundle 'vim-latex/vim-latex'
"Bundle 'Valloric/YouCompleteMe'
call vundle#end()
set guifont=Monaco:h11
set background=dark
colorscheme seti
"colorscheme material-theme
""""" you complete me binings"""""""
"let g:ycm_global_yvm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]


filetype plugin indent on
syntax enable
set modelines=0
set ttyfast         "draw faster
set ruler
set backspace=indent,eol,start 
set path+=**

set noswapfile
set nobackup

set visualbell

set encoding=utf-8

set autoindent

set cindent
""""""""spaces and tabs""""""""
set tabstop=4

set softtabstop=4

set expandtab
set shiftwidth=4
""""""""UI config""""""""""

set showcmd

set cursorline

set showmatch

"set number

filetype indent on

set wildmenu

set lazyredraw
set mouse=a
set showmatch

"""""""""searching"""""""""
set incsearch
set nohlsearch

nnoremap <leader><space> :nohlsearch

"""""""folding""""""""""
set foldenable
set wrap
set linebreak
set nolist

set textwidth=0
set wrapmargin=0

set formatoptions-=t

"""""" Status Line""""
set laststatus=2 
set statusline=

"""""""""""""""""""""""'
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction
"set foldlevelstart=10

"set foldnestmax=10
"set nowrap
""""""leader"""""
let mapleader=" "
"set clipboard=unnamed

let g:tex_flavor='latex'

"~~~~~~~~ Key changes.... 
nnoremap n nzz
nnoremap N Nzz
map <silent> <C-n> :NERDTreeToggle<CR>
"map <silent> <C-p> :!pdflatex % <CR>
set clipboard=unnamed

