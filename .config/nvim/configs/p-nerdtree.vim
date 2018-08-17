scriptencoding utf-8

nnoremap - :NERDTreeToggle<CR>
nnoremap <F2> :NERDTreeFind<CR>
nnoremap <silent> <C-n> :silent edit <C-R>=empty(expand('%')) ? '.' : expand('%:p:h')<CR><CR>
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMouseMode = 2
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 40
let g:NERDTreeCreatePrefix = 'silent keepalt keepjumps'
