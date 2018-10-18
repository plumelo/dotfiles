scriptencoding utf-8

nnoremap <silent> - :call NERDTreeToggleInCurDir()<cr>
function! NERDTreeToggleInCurDir()
  if g:NERDTree.IsOpen()
    exe 'NERDTreeClose'
  elseif empty(expand('%:p'))
    exe 'NERDTreeToggle'
  else
    exe 'NERDTreeFind'
  endif
endfunction
nnoremap <F2> :NERDTreeFind<CR>

function! NerdTreeBuffer()
  let l:pathStr = expand('%:p')
  let l:pathObj = g:NERDTreePath.New(l:pathStr)
  let l:dirStr = expand('%:p:h')
  call g:NERDTreeCreator.CreateWindowTree(l:dirStr)
  let l:node = b:NERDTree.root.reveal(l:pathObj)
  call b:NERDTree.render()
  call l:node.putCursorHere(1, 0)
endfunction
nnoremap <silent> = :call NerdTreeBuffer()<CR>

let g:NERDTreeMinimalUI = 1
let g:NERDTreeMouseMode = 2
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 40
