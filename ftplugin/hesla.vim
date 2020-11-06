" Vim filetype plugin
" Language:		Hesla
" Maintainer:		Já
" Last Change:		2020 Oct 17
"
if exists("b:did_ftplugin")
  finish
endif

setlocal conceallevel=2
setlocal concealcursor=n

augroup hesla
    au!
    au BufWinEnter *.gpg sy on
augroup END
