set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'taglist.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'mkitt/tabline.vim'
call vundle#end()
set guifont=Monaco:h11
set background=dark
colorscheme photon
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

"set cursorline

set showmatch

set number

filetype indent on

set wildmenu

set lazyredraw
set mouse=a
set showmatch

"""""""""searching"""""""""
set noincsearch
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

"==== Python filetype settings ====
augroup ft_python
    autocmd!
    autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python     vnoremap <buffer> <localleader>c :<c-u>call CommentOutVisualBlock("#")<cr>
    autocmd FileType python setlocal colorcolumn=80
augroup END

"set foldlevelstart=10
"==== YCM Settings ====
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"set foldnestmax=10
"set nowrap
"==== Leader Mapping ====
let mapleader=" "
"set clipboard=unnamed

let g:tex_flavor='latex'

"let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
"let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" ==== Key Bindings ====
nnoremap n nzz
nnoremap N Nzz
inoremap jk <Esc>
vnoremap ;; <Esc>
map <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <leader>;; :nohlsearch <cr>
vnoremap <leader>y "+yy
nnoremap <leader>p "+p
"=== useful ===
nnoremap <leader>l :e#<cr>
nnoremap <leader>k <C-u>
nnoremap <leader>j <C-d>
"let g:tagbar_usearrows = 1
nnoremap <silent> <leader>m :TlistToggle<CR>
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>


hi ColorColumn ctermbg=237 guibg=#3a3a3a
hi CursorLine ctermbg=236 guibg=#3a3a3a
hi CursorColumn ctermbg=236 guibg=#3a3a3a
hi Comment ctermfg=242 guifg=#6c6c6c
hi Visual        ctermfg=black        ctermbg=140        cterm=none        guifg=black   guibg=#af87d7   gui=none
hi VisualNOS    ctermfg=black        ctermbg=140        cterm=none        guifg=black    guibg=#af87d7    gui=none
hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
hi CursorLineNr term=bold cterm=NONE ctermfg=Grey ctermbg=NONE gui=NONE guifg=Grey guibg=NONE
hi Normal guibg=#303030 ctermbg=236 ctermfg=250 guifg=#c7c7c7
hi clear todo
hi todo   ctermfg=73   ctermbg=239 cterm=NONE               guifg=#008787  guibg=#444444  gui=NONE
hi Pmenu ctermfg=247   ctermbg=238  cterm=NONE          guifg=#a8a8a8      guibg=#444444     gui=NONE
hi PmenuSel ctermfg=238  ctermbg=73    cterm=NONE          guifg=#5fafaf      guibg=#008787   gui=NONE
hi MatchParen ctermbg=237 guibg=#3a3a3a
hi TabLineFill ctermfg=234 ctermbg=236
hi TabLine ctermfg=235 ctermbg=236
hi TabLineSel ctermfg=66 ctermbg=236
"map <silent> <C-p> :!pdflatex % <CR>
"set clipboard+=unnamedplus
if $TMUX == ''
    set clipboard+=unnamed
endif

"ctrl-p settings
let g:ctrlp_working_path_mode = 'ra'

"airline settings
let g:airline_theme='simple'
let g:airline#extensions#branch#enabled = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_skip_empty_sections = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

if has("autocmd")
      au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
        au InsertEnter,InsertChange *
                    \ if v:insertmode == 'i' |
                    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
                    \ elseif v:insertmode == 'r' |
                    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
                    \ endif
        au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
    endif
