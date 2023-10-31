if exists("b:current_syntax")
  finish
endif

syntax match fragoutHeader "^out " nextgroup=fragoutSuite skipwhite
syntax match fragoutSuite "\w\+" contained nextgroup=fragoutAssignment contains=fragoutSuiteVerity skipwhite
syntax match fragoutAssignment "\.\w\+" contained nextgroup=fragoutPassed,fragoutFailed skipwhite
syntax keyword fragoutPassed passed contained
syntax keyword fragoutFailed failed contained
syntax keyword fragoutSuiteVerity verity contained

hi def link fragoutPassed DiffAdd
hi def link fragoutFailed DiffDelete
hi def link fragoutSuite Type
hi def link fragoutAssignment Keyword
hi def link fragoutSuiteVerity Todo

let b:current_syntax = "llvm"
