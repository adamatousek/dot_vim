au BufNewFile,BufRead output
      \ if getline(1) =~ '^out ' | set ft=fragout nocin nosi ro sw=2 fdm=indent | endif
