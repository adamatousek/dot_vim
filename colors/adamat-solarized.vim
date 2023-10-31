" Name:     Adamat's customised solarized vim colorscheme
" Author:   Ethan Schoonover <es@ethanschoonover.com>
" URL:      http://ethanschoonover.com/solarized
"           (see this url for latest release & screenshots)
" License:  OSI approved MIT license (see end of this file)
" Created:  In the morning
" Modified: 2019 May 2

" Solarized settings {{{
"let &t_Co=256
let g:solarized_termtrans=1
let g:solarized_termcolors=16    "default value is 16
let g:solarized_degrade=0
runtime colors/solarized.vim
" }}}

let s:italic = ''
let s:hlbg = &bg == 'dark' ? 0 : 7

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
exe 'hi SpellBad cterm=underline ctermbg=' . s:hlbg
exe 'hi SpellCap cterm=none ctermfg=11 ctermbg=' . s:hlbg
hi SpellRare cterm=underline ctermbg=none ctermfg=11
hi Title  cterm=none ctermfg=3
"hi Folded cterm=underline ctermfg=10 ctermbg=7
hi FoldColumn ctermfg=magenta
hi Statement cterm=none ctermfg=red
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
