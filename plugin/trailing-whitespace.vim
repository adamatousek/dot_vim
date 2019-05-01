if exists('loaded_trailing_whitespace_plugin') | finish | endif
let loaded_trailing_whitespace_plugin = 1

" Highlight EOL whitespace, http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=darkred guibg=#382424
augroup TrailingWhitespace
    autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkred guibg=#382424
    autocmd WinNew,BufWinEnter * call <SID>HighlightSetup()

    " The above flashes annoyingly while typing, be calmer in insert mode
    autocmd InsertLeave * call <SID>HighlightWhitespace(0)
    autocmd InsertEnter * call <SID>HighlightWhitespace(1)
augroup END

function! s:HighlightSetup()
    if !exists('b:highlight_trailing_whitespace')
        let b:highlight_trailing_whitespace=1
    endif
    call s:HighlightWhitespace(0)
endfunction

function! s:HighlightWhitespace(insert_mode)
    if b:highlight_trailing_whitespace
        if a:insert_mode
            match ExtraWhitespace /\s\+\%#\@<!$/
        else
            match ExtraWhitespace /\s\+$/
        endif
    else
        match ExtraWhiteSpace //
    endif
endfunction

function! s:WhitespaceSet(enabled)
    let b:highlight_trailing_whitespace=a:enabled
    call s:HighlightWhitespace(0)
endfunction

function! s:FixWhitespace(line1,line2)
    let l:save_cursor = getpos(".")
    silent! execute ':' . a:line1 . ',' . a:line2 . 's/\s\+$//'
    call setpos('.', l:save_cursor)
endfunction

" Run :FixWhitespace to remove end of line white space
command! -range=% FixWhitespace call <SID>FixWhitespace(<line1>,<line2>)
command! TrailingWhitespaceEnable call <SID>WhitespaceSet(1)
command! TrailingWhitespaceDisable call <SID>WhitespaceSet(0)
command! TrailingWhitespaceToggle call <SID>WhitespaceSet(!b:highlight_trailing_whitespace)
