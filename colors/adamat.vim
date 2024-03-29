" Name:     Adamat's customised selenized vim colorscheme
" Created:  In the evening
" Modified: 2023 Oct 27

" Selenized settings {{{
let s:oldtco=&t_Co
let &t_Co=16
runtime colors/selenized.vim
let &t_Co=s:oldtco
" }}}

let s:italic = ''
let s:hlbg = &bg == 'dark' ? 7 : 0

" Changed colours {{{
hi ExtraWhitespace ctermbg=darkred guibg=#382424
"Customisations. this is spelll test, vim.
hi Ignore ctermfg=7
hi CursorLine ctermfg=none cterm=none
hi CursorLineNr cterm=none
hi Visual cterm=none ctermbg=223 ctermfg=none
if &bg == 'dark' | hi Visual cterm=none ctermbg=17 ctermfg=none | endif
hi Search cterm=none ctermbg=228 ctermfg=none
exe 'hi NonText ctermfg=14' . s:italic
hi SpellBad cterm=underline ctermbg=0
hi SpellCap cterm=none ctermfg=11 ctermbg=0
hi SpellRare cterm=underline ctermbg=none ctermfg=11
hi Title  cterm=none ctermfg=3
hi Folded cterm=underline
hi FoldColumn ctermfg=magenta
hi Statement cterm=none ctermfg=red
hi MatchParen ctermfg=blue cterm=inverse
"hi link Structure Statement
"hi Label ctermfg=red
hi Operator ctermfg=darkred
hi Type cterm=none ctermfg=3
hi! link hsNewtypedef hsTypedef
hi! link hsTypeFam hsStructure
exe 'hi String ctermfg=darkgreen ' . s:italic
"hi Number ctermfg=darkblue
"hi Constant ctermfg=darkcyan
exe 'hi Character ctermfg=darkblue' . s:italic
hi PreProc ctermfg=darkmagenta
hi Error cterm=bold,standout ctermbg=15 ctermfg=darkred
hi Special ctermfg=darkcyan
hi Function ctermfg=darkblue
hi vimGroup ctermfg=darkblue cterm=none
"hi Identifier ctermfg=magenta
hi! link cPreCondit PreProc
hi! link hsString String
hi CoqChecked ctermbg=193
hi CoqAdded ctermbg=153
hi CoqSent ctermbg=216
hi CoqError ctermbg=none ctermfg=darkred cterm=underline
hi texZone ctermfg=11
"Indentation
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd ctermbg=8
hi IndentGuidesEven ctermbg=0
hi! link SignColumn FoldColumn
hi DiffAdd ctermbg=150 ctermfg=none
hi DiffDelete ctermbg=217
hi DiffText ctermbg=195 ctermfg=none
hi DiffChange ctermbg=152 ctermfg=none
"}}}
" Coc colours {{{
hi CocErrorSign     ctermfg=15 ctermbg=1
hi CocWarningSign   ctermfg=15 ctermbg=3
hi CocInfoSign      ctermfg=4  ctermbg=7
hi CocHintSign      ctermfg=15 ctermbg=4

hi CocFloating      ctermfg=11 ctermbg=195
if &bg == 'dark' | hi CocFloating ctermbg=53 | endif
" }}}
let colors_name = "adamat"

let g:limelight_conceal_ctermfg = &bg=='dark' ? 10 : 14
let g:goyo_bg = &bg=='dark' ? 8 : 15

" vim: fdm=marker
