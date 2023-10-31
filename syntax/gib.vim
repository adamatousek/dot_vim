" Vim syntax file

if exists("b:current_syntax")
  finish
endif

if !exists('main_syntax')
  let main_syntax = 'gib'
endif

syn sync minlines=10
" syn case ignore

syn match Comment /^#.*/
syn match gibvaruse "$([^)]\+)"
syn match gibvarset /^\(let=\?\|set=\?\|add=\?\) \+\([a-z]\+\)/ contains=gibvarname
syn match gibvarcmd /^src \+\([a-z]\+\) \+\([a-z]\+\)/ contains=gibvarname
syn match gibvarcmd /^\(for\|def\|use\) \+\([a-z]\+\)/ contains=gibvarname

syn match gibcmd /^sub?\?/
syn match gibcmd /^cmd \+\([a-z_/.$()-]\+\)/ contains=gibcmdpath

syn match gibvarname / [a-z_.-]\+/ contained
" syn match gibcmdpath / [a-z_/.-]\+/ contained

syn keyword gibdepst
      \ dep
      \ out
      \ meta

hi def gibvaruse ctermfg=darkgreen
hi def gibvarset ctermfg=darkcyan
hi def gibdepst  ctermfg=darkred

hi def gibmacst  ctermfg=darkmagenta
hi def gibcmd    ctermfg=darkmagenta
hi def gibvarcmd ctermfg=darkmagenta

hi def gibvarname ctermfg=darkyellow
hi def gibcmdpath ctermfg=darkyellow

let b:current_syntax = "gib"
if main_syntax ==# 'gib'
  unlet main_syntax
endif

" vim:set sw=2:
