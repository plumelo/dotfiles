set shell=/bin/sh

runtime! options.vim
runtime! autocmd.vim
runtime! mappings.vim
runtime theme.vim

for s:f in glob('$HOME/.config/nvim/p-*.vim', 0, 1)
  execute 'source ' . s:f
endfor
