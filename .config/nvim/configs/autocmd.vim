scriptencoding utf-8

AutoCmd FileType nerdtree setlocal nolist
AutoCmd BufEnter * syntax sync fromstart
AutoCmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line('$') | exe 'normal! g`"zz' | endif
AutoCmd BufWritePre * call mkdir#Easy()
AutoCmd BufEnter * call timer_start(300, function('pack_delayed#plugins'))

function! s:hl()
  echo join(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'), '/')
endfunction
command! HL call <SID>hl()

command! SP %s/\s\+$//e | normal! ``
if !exists(':DiffOrig')
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif
