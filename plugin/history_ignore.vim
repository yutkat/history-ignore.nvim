if !exists('g:history_ignore')
  let g:history_ignore = [
        \ '^buf$',
        \ '^history$',
        \ '^h$',
        \ '^q$',
        \ '^qa$',
        \ '^w$',
        \ '^wq$',
        \ '^wa$',
        \ '^wqa$',
        \ '^q!$',
        \ '^qa!$',
        \ '^w!$',
        \ '^wq!$',
        \ '^wa!$',
        \'^wqa!$'
        \ ]
endif

if has('autocmd')
  augroup history_ignore
    autocmd!
    if exists('##CmdlineEnter')
      autocmd CmdlineEnter : call history_ignore#clean()
    endif
  augroup END
endif
