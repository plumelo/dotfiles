scriptencoding utf-8

if has('termguicolors')
  set termguicolors
endif

set background=dark
silent! colorscheme onehalfdark
highlight Comment cterm=italic gui=italic
highlight Search guibg=#144e72 guifg=#c9d7e0
highlight IncSearch guibg=#ad4120 guifg=#c9d7e0
