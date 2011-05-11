call pathogen#runtime_append_all_bundles()

filetype plugin indent on

set nocompatible
set backspace=indent,eol,start

if has("gui_running")
  set gfn=Inconsolata\ Medium\ 14
  set guioptions-=T
  set guioptions-=M
  colors ir_black
else
  colors wombat
end

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set ai
set si
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
