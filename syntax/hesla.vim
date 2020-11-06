" Vim syntax file
" Language:             Hesla
" Maintainer:		Já
" Last Change:		2020 Oct 17
"
if exists("b:current_syntax")
    finish
endif

syntax case ignore

syntax match heslaCategory "\S.\{-}\ze\s{{{$"
highlight heslaCategory ctermfg=magenta cterm=bold

syntax match heslaAccount contains=heslaFoldmark "^\s*\S\([^:]\|:\s\@!\)*$\&.*[^{]$"
highlight heslaAccount ctermfg=red cterm=none

syntax match heslaKeyword "\v\s{0,}\S.{-}:\ze\s"
highlight link heslaKeyword Comment


" ikony klíčů: ⚿ 🔘 🔐 🔑 🔒 🔓 🗝
syntax match heslaPasswords "\%(^\s*.*\(pass\|hesl\|cvc\).*:\s\+\)\@<=.*" conceal cchar=🔐
syntax match heslaPasswords "||.\{-}||"
syntax match heslaPasswords "|||.\{-}|||" conceal cchar=🔐
highlight heslaPasswords ctermbg=blue ctermfg=blue

syntax match heslaFoldmark "{{{\|}}}"
highlight link heslaFoldmark Ignore
syntax match heslaIgnore "^.\{-}\ze v[i]m: ft=hesla"
highlight link heslaIgnore Ignore

let b:current_syntax = "hesla"
