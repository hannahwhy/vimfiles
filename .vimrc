set nocompatible
set backspace=indent,eol,start

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

set sts=2
set sw=2
set ai
set si
set et
set number
set nowrap
filetype plugin indent on
if has("gui_running")
  set gfn=Inconsolata:h16.00
  set guioptions-=T
  set guioptions-=m
  let do_syntax_sel_menu = 1|runtime!synmenu.vim
  aunmenu &Syntax.&Show\ filetypes\ in\ menu
  colors ir_black
else
  colors wombat
end

set pfn=Inconsolata:h16.00
set incsearch
set foldmethod=syntax
set foldlevel=1

command! CS let @/ = ""
command! GR !git reset HEAD %
command! GA !git add %
command! GC !git checkout %
command! GS !git status

au BufNewFile,BufRead *.j setf objj
au BufNewFile,BufRead *.as setf actionscript
au BufNewFile,BufRead *.tt setf treetop
let g:mxml_syntax_folding = 1
