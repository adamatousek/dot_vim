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

" Changed colours {{{
hi ExtraWhitespace ctermbg=darkred guibg=#382424
"Customisations. this is spelll test, vim.
hi Ignore ctermfg=7
hi CursorLine ctermfg=none cterm=none
hi CursorLineNr cterm=none
hi Visual cterm=none ctermbg=223 ctermfg=none
if &bg == 'dark' | hi Visual cterm=none ctermbg=60 ctermfg=none | endif
hi Search cterm=none ctermbg=228 ctermfg=none
hi NonText cterm=italic ctermfg=14
hi SpellBad cterm=underline ctermbg=7
hi SpellCap cterm=none ctermbg=7 ctermfg=11
hi SpellRare cterm=underline ctermbg=none ctermfg=11
hi TabLine cterm=none ctermfg=8 ctermbg=10
hi TabLineFill cterm=none ctermfg=14 ctermbg=10
hi TabLineSel cterm=none ctermfg=14 ctermbg=8
if &bg == 'dark'
    hi TabLineSel cterm=none ctermfg=12 ctermbg=13
    hi TabLine cterm=none ctermfg=14 ctermbg=0
    hi TabLineFill cterm=none ctermfg=1 ctermbg=0
endif
hi Title  cterm=none ctermfg=3
"hi Folded cterm=underline ctermfg=10 ctermbg=7
hi FoldColumn ctermfg=magenta
hi Statement cterm=none ctermfg=red
"hi link Structure Statement
"hi Label ctermfg=red
hi Operator ctermfg=darkred
hi Type cterm=none ctermfg=3
hi String cterm=italic ctermfg=darkgreen
"hi Number ctermfg=darkblue
"hi Constant ctermfg=darkcyan
hi Character cterm=italic ctermfg=darkblue
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

let colors_name = "adamat"

" vim: fdm=marker
