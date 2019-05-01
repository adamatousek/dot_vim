augroup vimrc
    au!
    au VimEnter * let $VRSTVENI = $VRSTVENI.'/vim'
    au BufWritePost .vimrc so %
    " Project-dependent things
    au BufRead ~/src/divine/* so ~/src/divine/vimrc.local
augroup end "augroup vimrc

se modeline
filetype plugin on
filetype indent on

packadd matchit

map <F7>   :UndotreeToggle<CR>
map <F8>   <Plug>NERDTreeTabsToggle<CR>
map <S-F8> :NERDTreeFind<CR>
map <F9>   :Agrep -r<Space>
map <F10>  :sh<CR>

" Make Y constistent with C and D
nnoremap Y y$

inoremap <C-l> <Right>
noremap! <C-b> <C-r>"
cnoremap <C-a> <Home>
tnoremap <C-n> <C-w>N

" Left and right move cursor, not wildmenu selection
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

command! FSR FSSplitRight
command! FSL FSSplitLeft

syntax enable
runtime colorscheme.vim

let maplocalleader=','

let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeStatusline='CWD: %{fnamemodify(getcwd(), ":~")}'

"set cindent
set incsearch
set wildmenu
set wildmode=longest:full,full:full
set showcmd
set ttimeoutlen=50 "key code delay
set smartindent
set colorcolumn=80
set expandtab
set softtabstop=4
set shiftwidth=4
set cursorline
set laststatus=2 "Always show status line
set ruler
set nu "Show line number
set nuw=2 "minimum width of number column
set mouse=a "Enable mouse for everything
set wrap
set lbr "Break at word boundary
set sbr=↳\  "At the start of wrapped line
set listchars=eol:$,extends:>,precedes:<,tab:>-,trail:.
"set autochdir "cd to current file's directory
set spellsuggest=fast
set spelllang=en
set nospell "spell checking, off by default
set swb=useopen,usetab,newtab "jump to existing buffer when needed
set cino+=N-s
set autowrite
set makeprg=cd\ build;\ make\ EXTRA_CFLAGS=-fcolor-diagnostic
set textwidth=80
set statusline=\ %f%m%r%h%q%w\ %=%(%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y%)\ %([%l,%v][%p%%]\ %)
set clipboard=autoselect,unnamed
set nojoinspaces
set splitbelow
set splitright
set fillchars=vert:\ ,fold:·

"GUI
set guioptions-=T "no toolbar
set guioptions-=m "no menubar


" <Esc><letter> as <M-letter>
" Not doing this globally, because it breaks things in macros

function! Altify( letter )
  exec "set <M-".a:letter.">=".a:letter
  exec "imap \e".a:letter." <M-".a:letter.">"
  let c = nr2char(1+char2nr(a:letter))
endf

for c in ['w', 'b', 'e' ]
    call Altify( c )
endfo

delfunction Altify

let g:rbpt_colorpairs = [
    \ ['52', 'DarkOrchid3'],
    \ ['30',  'firebrick3'],
    \ ['106', 'RoyalBlue3'],
    \ ['126',  'SeaGreen3'],
    \ ['69', 'DarkOrchid3'],
    \ ['166', 'firebrick3'],
    \ ['28',  'RoyalBlue3'],
    \ ['90',   'SeaGreen3'],
    \ ['26', 'DarkOrchid3'],
    \ ['196', 'firebrick3'],
    \ ]
"let s:a = (((((((((((((('bla'))))))))))))))
let g:rbpt_max = 10
let g:rbpt_loadcmd_toggle = 1

nnoremap <Leader>( :RainbowParenthesesLoadRound<CR>
nnoremap <Leader>[ :RainbowParenthesesLoadSquare<CR>
nnoremap <Leader>] :RainbowParenthesesToggle<CR>

let g:surround_117 = "„\r“"     "surround 'u'vozovky
let g:surround_85  = "‚\r‘"     "surround 'U'
let g:surround_113 = "“\r”"     "surround 'q'uotes
let g:surround_81  = "‘\r’"     "surround 'Q'
"let g:surround_36 = "$\r$"     "surround $
let g:surround_indent = 1

let g:signify_disable_by_default = 1
let g:signify_vcs_list = [ 'git', 'darcs' ]

let g:wordmotion_mappings = {
\ 'w' : '<M-w>',
\ 'b' : '<M-b>',
\ 'e' : '<M-e>',
\ 'ge' : 'g<M-e>',
\ 'aw' : 'a<M-w>',
\ 'iw' : 'i<M-w>',
\ '<C-R><C-W>' : '<C-R><M-w>'
\ }

" Root
if $USER ==# "root"
    hi StatusLine ctermfg=red
endif

" Hide answers in IS questionaries
"au BufRead *.qdef sy region VertSplit start="^:" end="ok$"

" For future reference: it seems that I've been using vim since october 2012,
" that is half a year before switching to Dvorak.
