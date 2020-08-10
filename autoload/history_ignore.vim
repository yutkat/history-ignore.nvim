function! history_ignore#clean() abort
  call filter(copy(g:history_ignore), {i, v -> histdel(':', v)})
endfunction

