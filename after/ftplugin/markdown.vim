setl spell spelllang=cs
setl conceallevel=3
setl foldlevel=1
setl foldcolumn=2
let g:markdown_fenced_languages=['haskell']
let g:markdown_folding=1

" Heading underliners
inoremap <buffer> <silent> <LocalLeader>= <C-o>:-1t-1<CR><C-o>:s/./=/g<CR><Down><CR>
inoremap <buffer> <silent> <LocalLeader>- <C-o>:-1t-1<CR><C-o>:s/./-/g<CR><Down><CR>
