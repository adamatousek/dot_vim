setl spell spelllang=cs

" Heading underliners
inoremap <buffer> <silent> <LocalLeader>= <C-o>:-1t-1<CR><C-o>:s/./=/g<CR><Down><CR>
inoremap <buffer> <silent> <LocalLeader>- <C-o>:-1t-1<CR><C-o>:s/./-/g<CR><Down><CR>
