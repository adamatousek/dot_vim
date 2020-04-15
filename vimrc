augroup vimrc
    au!
    au VimEnter * let $VRSTVENI = $VRSTVENI.'/vim'
    au BufWritePost .vimrc so %
    " Project-dependent things
    au BufRead ~/src/divine/* so ~/src/divine/vimrc.local
augroup end "augroup vimrc

language messages C.UTF-8

filetype plugin on
filetype indent on

packadd matchit

map <F7>   :UndotreeToggle<CR>
map <F8>   :NERDTreeToggle<CR>
map <S-F8> :NERDTreeFind<CR>
map <F10>  :sh<CR>

" Make Y constistent with C and D
nnoremap Y y$

inoremap <C-l> <Right>
noremap! <C-b> <C-r>*
cnoremap <C-a> <Home>
tnoremap <C-s> <C-w>N
inoremap <S-Tab> <C-v><C-i>
inoremap <C-c> <C-x>
nnoremap <CR> o<Esc>
noremap! <C-j> <Esc>j
nnoremap ; :
nnoremap - ^
nnoremap _ ;
nnoremap ť ;
nnoremap Ť ,

" Left and right move cursor, not wildmenu selection
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

" Agrep
nmap <F9> :<C-U>Agrep -r<Space>
nmap <S-F9> :<C-U>Aclose<CR>
nmap <Leader>g :<C-U>Aopen<CR>
nmap <Leader>] :<C-U>exe v:count1.(bufwinnr('Agrep') == -1 ? 'cn' : 'Anext')<CR>
nmap <Leader>[ :<C-U>exe v:count1.(bufwinnr('Agrep') == -1 ? 'cp' : 'Aprev')<CR>
let g:agrep_default_flags = '-I --exclude-dir=.{git,svn} --exclude-dir=_darcs --exclude-dir="_build*"'

" Highlighting searches
nmap <Leader>c :match<CR>:nohlsearch<CR>
nmap <Leader>m :match Aux //<Left>
nmap <Leader>M :match AuxDim //<Left>

" Repeat last : command
nmap <Leader><Leader> @:

" More reachable (and who uses Ex mode, anyway?)
nmap Q  <C-w>
nnoremap <C-w>Q <C-w><C-w>

" Buffer switch
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bNext<CR>

command! FSR FSSplitRight
command! FSL FSSplitLeft

set background=light
colo adamat
syntax enable
" Colours for highlighting via :match
hi Aux ctermbg=152
hi AuxDim ctermbg=187
hi AuxBright ctermbg=225

let maplocalleader=','

let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeStatusline='CWD: %{fnamemodify(getcwd(), ":~")}'

"set cindent
set modeline
set incsearch
set wildmenu
set wildmode=longest:full,full:full
set showcmd
set ttimeoutlen=50 "key code delay
set smartindent
set ignorecase
set smartcase "ignore case in a pattern unless it contains an uppercase character
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
set listchars=eol:$,extends:>,precedes:<,tab:>-,trail:.,nbsp:~
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
set fillchars=vert:\ ,fold:\  "spaces
set foldtext=
set formatoptions+=1nj
set directory=/tmp/.vimswap//,/tmp// "no swap files
set complete-=i

"GUI
set guioptions-=T "no toolbar
set guioptions-=m "no menubar

" Fold text; based on https://dhruvasagar.com/2013/03/28/vim-better-foldtext
function! NeatFoldText()
    let line = substitute(foldtext(), '^.\{-\}: ', ' ', '' )
    let lines_count = v:foldend - v:foldstart + 1
    let max_line_number_width = len(line('$'))
    let lines_count_text = printf('%' . max_line_number_width . 's', lines_count) . ' ↓'
    let foldchar = matchstr(&fillchars, 'fold:\zs.')
    let foldtextstart = strpart('＋' . repeat('−−', v:foldlevel - 1) . line, 0, (winwidth(0)*2)/3)
    let foldtextend = lines_count_text . repeat(foldchar, 8)
    let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
    return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
set foldtext=NeatFoldText()

" <Esc><letter> as <M-letter>
" Not doing this globally, because it breaks things in macros

function! Altify( letter )
  exec "set <M-".a:letter.">=".a:letter
  "exec "imap \e".a:letter." <M-".a:letter.">"
  let c = nr2char(1+char2nr(a:letter))
endf

"for c in ['w', 'b', 'e' ]
"    call Altify( c )
"endfo

delfunction Altify

let g:tex_flavor = "latex"

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
