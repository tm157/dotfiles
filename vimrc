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
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
call vundle#end()
set guifont=Monaco:h11
"set guifont=Menlo:h11
set background=dark
colorscheme seti
"colorscheme material-theme
""""" you complete me binings"""""""
 "let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

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
"set colorcolumn=80

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
" Python filetype settings... 
augroup ft_python
    autocmd!
    autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python     vnoremap <buffer> <localleader>c :<c-u>call CommentOutVisualBlock("#")<cr>
    set tabstop=2 softtabstop=2 expandtab shiftwidth=2 smarttab
augroup END
" }}}
"""""""""""""""""""""""
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction
"set foldlevelstart=10
""" YCM Settings ''''
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"set foldnestmax=10
"set nowrap
""""""leader"""""
let mapleader=" "
"set clipboard=unnamed

let g:tex_flavor='latex'

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"~~~~~~~~ Key changes.... 
nnoremap n nzz
nnoremap N Nzz
inoremap ;; <Esc>
map <silent> <C-n> :NERDTreeToggle<CR>


"map <silent> <C-p> :!pdflatex % <CR>
set clipboard=unnamed

