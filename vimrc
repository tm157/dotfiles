set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator' 
Bundle 'gmarik/vundle'
"Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'taglist.vim'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'flazz/vim-colorschemes' 
"Bundle 'vim-latex/vim-latex'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
call vundle#end()
set guifont=Monaco:h11
"set guifont=Menlo:h11 "set guifont=Iconsolata
set background=dark
colorscheme limelight
""""" you complete me binings"""""""
 "let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
 "




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
set t_vb=

set encoding=utf-8

set autoindent
set cindent
set copyindent
set bs=indent,eol,start

set splitbelow
set splitright
""""""""spaces and tabs"""""""" set tabstop=4

set softtabstop=4
"set colorcolumn=80

set expandtab
set shiftwidth=4
""""""""UI config""""""""""

set showcmd

set cursorline

set showmatch

set number

filetype indent on

set wildmenu

set lazyredraw
set mouse=a
set showmatch

"""""""""searching"""""""""
set incsearch
set hlsearch
hi Search cterm=NONE ctermfg=black ctermbg=140 guifg=black guibg=#af87d7
hi IncSearch cterm=NONE ctermfg=black ctermbg=140 guifg=black guibg=#af87d7
"""""""folding""""""""""
set foldenable
set wrap
set linebreak
set nolist

set textwidth=0
set wrapmargin=0

set formatoptions-=t
set tags=tags

"""""""UNDO FIX""""""
"" Does more harm than good right now""
"set undofile " Maintain undo history between sessions
"set undolevels=5000
"set undodir=~/.vim/undodir
set title
set ignorecase
set smartcase

"""""" Status Line""""
set laststatus=2 
set statusline=
"set colorcolumn=80
"""""""NerdTree fix"""""""""""""
let NERDTreeIgnore = ['\.pyc$']

"""""""""""""""""""""""'
" Python filetype settings... 
augroup ft_python
    autocmd!
    autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python     vnoremap <buffer> <localleader>c :<c-u>call CommentOutVisualBlock("#")<cr>
    autocmd FileType python setlocal colorcolumn=80
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
vnoremap ;; <Esc>
map <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <leader>;; :nohlsearch <cr>
vnoremap <leader>y "+yy
nnoremap <leader>p "+p 
nnoremap <leader>l :e#<cr>
nnoremap <leader>k <C-u>
nnoremap <leader>j <C-d>
nnoremap s ciw

"Tagbar
"let g:tagbar_usearrows = 1
nnoremap <silent> <leader>m :TlistToggle<CR>


hi ColorColumn ctermbg=236 guibg=#303030
hi CursorLine ctermbg=236 guibg=#303030
hi Comment ctermfg=245 guifg=#8a8a8a
"hi Visual        ctermfg=251        ctermbg=240        cterm=none        guifg=#c3c6ca    guibg=#585858    gui=none
"hi VisualNOS    ctermfg=251        ctermbg=236        cterm=none        guifg=#c3c6ca    guibg=#303030    gui=none
hi Visual        ctermfg=black        ctermbg=140        cterm=none        guifg=black   guibg=#af87d7   gui=none
hi VisualNOS    ctermfg=black        ctermbg=140        cterm=none        guifg=black    guibg=#af87d7    gui=none
hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
hi CursorLineNr term=bold cterm=NONE ctermfg=Grey ctermbg=NONE gui=NONE guifg=Grey guibg=NONE
"hi Normal guibg=#262626 ctermbg=235 ctermfg=250 guifg=#bcbcbc
hi Normal guibg=#262626 ctermbg=235 ctermfg=249 guifg=#b2b2b2
hi clear todo
hi todo ctermbg=238 guibg=#626262
hi Pmenu ctermfg=248   ctermbg=237  cterm=NONE          guifg=#a8a8a8      guibg=#3a3a3a     gui=NONE
hi PmenuSel ctermfg=NONE  ctermbg=239    cterm=NONE          guifg=NONE      guibg=#4e4e4e   gui=NONE
hi MatchParen ctermbg=236 guibg=#303030
hi TabLineFill ctermfg=249 ctermbg=234
hi TabLine ctermfg=249 ctermbg=234
hi TabLineSel ctermfg=249 ctermbg=31
"map <silent> <C-p> :!pdflatex % <CR>
"set clipboard+=unnamedplus
if $TMUX == ''
    set clipboard+=unnamed
endif


"ctrl-p settings
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

