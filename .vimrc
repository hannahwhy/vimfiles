call pathogen#runtime_append_all_bundles()

filetype plugin indent on

set nocompatible
set backspace=indent,eol,start

if has("gui_running")
  set gfn=Inconsolata\ Medium\ 10
  set guioptions-=T
  set guioptions-=m
  colors ir_black
else
  colors slate
end

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set ai
set si
set modeline
set modelines=1
set number
set nowrap
set incsearch
set foldmethod=syntax
set foldlevel=1

command! CS let @/ = ""
command! GR !git reset HEAD %
command! GA !git add %
command! GC !git checkout %
command! GS !git status

" Haskellmode stuff
let g:haddock_browser = "/usr/bin/firefox"
au BufEnter *.hs compiler ghc
