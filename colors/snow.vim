" Name:         snow
" Author:       nightsense
" Maintainer:   nightsense
" License:      MIT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
   \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[snow] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'snow'

if &background ==# 'dark'
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=249 ctermbg=236 guifg=#b0b7c3 guibg=#2b2e32 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=246 ctermbg=NONE guifg=#8c96a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=246 ctermbg=NONE guifg=#8c96a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=246 ctermbg=NONE guifg=#8c96a4 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=249 ctermbg=NONE guifg=#b0b7c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=249 ctermbg=236 guifg=#b0b7c3 guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=249 ctermbg=NONE guifg=#b0b7c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=249 ctermbg=236 guifg=#b0b7c3 guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=249 ctermbg=236 guifg=#b0b7c3 guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=249 ctermbg=236 guifg=#b0b7c3 guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=246 ctermbg=236 guifg=#8c96a4 guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Cursor ctermfg=252 ctermbg=236 guifg=#ced4dd guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=252 ctermbg=236 guifg=#ced4dd guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=237 guifg=NONE guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=NONE ctermbg=237 guifg=NONE guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=252 ctermbg=240 guifg=#ced4dd guibg=#555c66 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=249 ctermbg=237 guifg=#b0b7c3 guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=249 ctermbg=237 guifg=#b0b7c3 guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=249 ctermbg=237 guifg=#b0b7c3 guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=249 ctermbg=237 guifg=#b0b7c3 guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=249 ctermbg=237 guifg=#b0b7c3 guibg=#35383e guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=249 ctermbg=237 guifg=#b0b7c3 guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=240 ctermbg=240 guifg=#555c66 guibg=#555c66 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=249 ctermbg=249 guifg=#b0b7c3 guibg=#b0b7c3 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=237 ctermbg=237 guifg=#35383e guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#35383e guibg=#35383e guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=240 ctermbg=240 guifg=#555c66 guibg=#555c66 guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#d49b9b cterm=NONE,underline gui=NONE,undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#91add4 cterm=NONE,underline gui=NONE,undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#72b6ba cterm=NONE,underline gui=NONE,undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#c39fc5 cterm=NONE,underline gui=NONE,undercurl
  hi StorageClass ctermfg=139 ctermbg=NONE guifg=#ad89ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Structure ctermfg=139 ctermbg=NONE guifg=#ad89ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=139 ctermbg=NONE guifg=#ad89ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Typedef ctermfg=139 ctermbg=NONE guifg=#ad89ae guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi TooLong ctermfg=139 ctermbg=236 guifg=#ad89ae guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=139 ctermbg=236 guifg=#ad89ae guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Function ctermfg=138 ctermbg=NONE guifg=#be8786 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=138 ctermbg=NONE guifg=#be8786 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=138 ctermbg=236 guifg=#be8786 guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=138 ctermbg=236 guifg=#be8786 guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=138 ctermbg=236 guifg=#be8786 guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=138 ctermbg=236 guifg=#be8786 guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Debug ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialChar ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialComment ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Tag ctermfg=137 ctermbg=NONE guifg=#a6936c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChanged ctermfg=137 ctermbg=236 guifg=#a6936c guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=137 ctermbg=236 guifg=#a6936c guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=137 ctermbg=236 guifg=#a6936c guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=108 ctermbg=NONE guifg=#799e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=108 ctermbg=NONE guifg=#799e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=108 ctermbg=NONE guifg=#799e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=108 ctermbg=NONE guifg=#799e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=108 ctermbg=NONE guifg=#799e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=108 ctermbg=NONE guifg=#799e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=108 ctermbg=NONE guifg=#799e7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=108 ctermbg=236 guifg=#799e7a guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=108 ctermbg=236 guifg=#799e7a guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Define ctermfg=73 ctermbg=NONE guifg=#5b9fa3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Include ctermfg=73 ctermbg=NONE guifg=#5b9fa3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Macro ctermfg=73 ctermbg=NONE guifg=#5b9fa3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreCondit ctermfg=73 ctermbg=NONE guifg=#5b9fa3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=73 ctermbg=NONE guifg=#5b9fa3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=73 ctermbg=236 guifg=#5b9fa3 guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=67 ctermbg=NONE guifg=#7a97bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=67 ctermbg=NONE guifg=#7a97bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=67 ctermbg=NONE guifg=#7a97bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=67 ctermbg=NONE guifg=#7a97bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=67 ctermbg=NONE guifg=#7a97bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=67 ctermbg=NONE guifg=#7a97bd guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=67 ctermbg=236 guifg=#7a97bd guibg=#2b2e32 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  finish
endif

hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=240 ctermbg=231 guifg=#555c66 guibg=#ffffff guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=243 ctermbg=NONE guifg=#6e7785 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=243 ctermbg=NONE guifg=#6e7785 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=243 ctermbg=NONE guifg=#6e7785 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=240 ctermbg=NONE guifg=#555c66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=240 ctermbg=231 guifg=#555c66 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=240 ctermbg=NONE guifg=#555c66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=240 ctermbg=231 guifg=#555c66 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=240 ctermbg=231 guifg=#555c66 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=240 ctermbg=231 guifg=#555c66 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=243 ctermbg=231 guifg=#6e7785 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Cursor ctermfg=238 ctermbg=231 guifg=#444951 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=238 ctermbg=231 guifg=#444951 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=255 guifg=NONE guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=255 guifg=NONE guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=NONE ctermbg=255 guifg=NONE guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=238 ctermbg=249 guifg=#444951 guibg=#b0b7c3 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=240 ctermbg=255 guifg=#555c66 guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=255 guifg=NONE guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=240 ctermbg=255 guifg=#555c66 guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=240 ctermbg=255 guifg=#555c66 guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=240 ctermbg=255 guifg=#555c66 guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=240 ctermbg=255 guifg=#555c66 guibg=#eceef2 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi WildMenu ctermfg=240 ctermbg=255 guifg=#555c66 guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=249 ctermbg=249 guifg=#b0b7c3 guibg=#b0b7c3 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=240 ctermbg=240 guifg=#555c66 guibg=#555c66 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=255 ctermbg=255 guifg=#eceef2 guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=255 ctermbg=255 guifg=#eceef2 guibg=#eceef2 guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=249 ctermbg=249 guifg=#b0b7c3 guibg=#b0b7c3 guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#cb3e50 cterm=NONE,underline gui=NONE,undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#007bdc cterm=NONE,underline gui=NONE,undercurl
hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#008b9a cterm=NONE,underline gui=NONE,undercurl
hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#aa4eb4 cterm=NONE,underline gui=NONE,undercurl
hi StorageClass ctermfg=133 ctermbg=NONE guifg=#9a639f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Structure ctermfg=133 ctermbg=NONE guifg=#9a639f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=133 ctermbg=NONE guifg=#9a639f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Typedef ctermfg=133 ctermbg=NONE guifg=#9a639f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TooLong ctermfg=133 ctermbg=231 guifg=#9a639f guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=133 ctermbg=231 guifg=#9a639f guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Function ctermfg=131 ctermbg=NONE guifg=#b25d60 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=131 ctermbg=NONE guifg=#b25d60 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=131 ctermbg=231 guifg=#b25d60 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=131 ctermbg=231 guifg=#b25d60 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=131 ctermbg=231 guifg=#b25d60 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=131 ctermbg=231 guifg=#b25d60 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Debug ctermfg=94 ctermbg=NONE guifg=#8d7334 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=94 ctermbg=NONE guifg=#8d7334 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=94 ctermbg=NONE guifg=#8d7334 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialChar ctermfg=94 ctermbg=NONE guifg=#8d7334 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialComment ctermfg=94 ctermbg=NONE guifg=#8d7334 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=94 ctermbg=NONE guifg=#8d7334 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Tag ctermfg=94 ctermbg=NONE guifg=#8d7334 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChanged ctermfg=94 ctermbg=231 guifg=#8d7334 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=94 ctermbg=231 guifg=#8d7334 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=179 ctermbg=238 guifg=#ddbe7b guibg=#444951 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=65 ctermbg=NONE guifg=#45834c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=65 ctermbg=NONE guifg=#45834c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=65 ctermbg=NONE guifg=#45834c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=65 ctermbg=NONE guifg=#45834c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=65 ctermbg=NONE guifg=#45834c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=65 ctermbg=NONE guifg=#45834c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=65 ctermbg=NONE guifg=#45834c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=65 ctermbg=231 guifg=#45834c guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=65 ctermbg=231 guifg=#45834c guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Define ctermfg=30 ctermbg=NONE guifg=#00838a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Include ctermfg=30 ctermbg=NONE guifg=#00838a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Macro ctermfg=30 ctermbg=NONE guifg=#00838a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreCondit ctermfg=30 ctermbg=NONE guifg=#00838a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=30 ctermbg=NONE guifg=#00838a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=30 ctermbg=231 guifg=#00838a guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=32 ctermbg=NONE guifg=#3f7ab5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=32 ctermbg=NONE guifg=#3f7ab5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=32 ctermbg=NONE guifg=#3f7ab5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=32 ctermbg=NONE guifg=#3f7ab5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=32 ctermbg=NONE guifg=#3f7ab5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=32 ctermbg=NONE guifg=#3f7ab5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=32 ctermbg=231 guifg=#3f7ab5 guibg=#ffffff guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #ffffff ~
" Color:      gry1 #eceef2 ~
" Color:      gry2 #6e7785 ~
" Color:      gry3 #555c66 ~
" Color:      gryc #444951 ~
" Color:      srch #ddbe7b ~
" Color:      grys #444951 ~
" Color:      gryp #b0b7c3 ~
" Color:      sprd #cb3e50 ~
" Color:      spbl #007bdc ~
" Color:      spcy #008b9a ~
" Color:      spmg #aa4eb4 ~
" Color:      red_ #b25d60 ~
" Color:      gold #8d7334 ~
" Color:      gren #45834c ~
" Color:      cyan #00838a ~
" Color:      blue #3f7ab5 ~
" Color:      mgnt #9a639f ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" Question           none   none
" NonText            none   none
" Normal             gry3   gry0
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" FoldColumn         gry3   none
" PmenuSel           gry3   gry0   reverse
" SignColumn         gry3   none
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TabLineSel         gry3   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Folded             none   gry1
" MatchParen         gryc   gryp
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" WildMenu           gry3   gry1
" PmenuSbar          gryp   gryp
" PmenuThumb         gry3   gry3
" TabLineFill        gry1   gry1
" ToolbarLine        gry1   gry1
" VertSplit          gryp   gryp
" SpellBad           none   none   g=undercurl   s=sprd   t=underline
" SpellCap           none   none   g=undercurl   s=spbl   t=underline
" SpellLocal         none   none   g=undercurl   s=spcy   t=underline
" SpellRare          none   none   g=undercurl   s=spmg   t=underline
" StorageClass       mgnt   none
" Structure          mgnt   none
" Type               mgnt   none
" Typedef            mgnt   none
" TooLong            mgnt   gry0   reverse
" WarningMsg         mgnt   gry0   reverse
" Function           red_   none
" Identifier         red_   none
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" Debug              gold   none
" Delimiter          gold   none
" Special            gold   none
" SpecialChar        gold   none
" SpecialComment     gold   none
" SpecialKey         gold   none
" Tag                gold   none
" DiffChanged        gold   gry0   reverse
" DiffText           gold   gry0   reverse
" Search             srch   grys   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Define             cyan   none
" Include            cyan   none
" Macro              cyan   none
" PreCondit          cyan   none
" PreProc            cyan   none
" Todo               cyan   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Visual             blue   gry0   reverse
" Background: dark
" Color:      gry0 #2b2e32 ~
" Color:      gry1 #35383e ~
" Color:      gry2 #8c96a4 ~
" Color:      gry3 #b0b7c3 ~
" Color:      gryc #ced4dd ~
" Color:      srch #a6936c ~
" Color:      grys #2b2e32 ~
" Color:      gryp #555c66 ~
" Color:      sprd #d49b9b ~
" Color:      spbl #91add4 ~
" Color:      spcy #72b6ba ~
" Color:      spmg #c39fc5 ~
" Color:      red_ #be8786 ~
" Color:      gold #a6936c ~
" Color:      gren #799e7a ~
" Color:      cyan #5b9fa3 ~
" Color:      blue #7a97bd ~
" Color:      mgnt #ad89ae ~
" Bold               none   none   bold
" Conceal            none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" Question           none   none
" NonText            none   none
" Normal             gry3   gry0
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" FoldColumn         gry3   none
" PmenuSel           gry3   gry0   reverse
" SignColumn         gry3   none
" StatusLine         gry3   gry0   reverse
" StatusLineTerm     gry3   gry0   reverse
" TabLineSel         gry3   gry0   reverse
" VisualNOS          gry2   gry0   reverse
" Cursor             gryc   gry0   reverse
" IncSearch          gryc   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" DiffChange         none   gry1
" Folded             none   gry1
" MatchParen         gryc   gryp
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" WildMenu           gry3   gry1
" PmenuSbar          gryp   gryp
" PmenuThumb         gry3   gry3
" TabLineFill        gry1   gry1
" ToolbarLine        gry1   gry1
" VertSplit          gryp   gryp
" SpellBad           none   none   g=undercurl   s=sprd   t=underline
" SpellCap           none   none   g=undercurl   s=spbl   t=underline
" SpellLocal         none   none   g=undercurl   s=spcy   t=underline
" SpellRare          none   none   g=undercurl   s=spmg   t=underline
" StorageClass       mgnt   none
" Structure          mgnt   none
" Type               mgnt   none
" Typedef            mgnt   none
" TooLong            mgnt   gry0   reverse
" WarningMsg         mgnt   gry0   reverse
" Function           red_   none
" Identifier         red_   none
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" Debug              gold   none
" Delimiter          gold   none
" Special            gold   none
" SpecialChar        gold   none
" SpecialComment     gold   none
" SpecialKey         gold   none
" Tag                gold   none
" DiffChanged        gold   gry0   reverse
" DiffText           gold   gry0   reverse
" Search             srch   grys   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Define             cyan   none
" Include            cyan   none
" Macro              cyan   none
" PreCondit          cyan   none
" PreProc            cyan   none
" Todo               cyan   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Visual             blue   gry0   reverse
