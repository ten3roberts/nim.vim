if exists('b:nim_loaded')
  finish
endif

let b:nim_loaded = 1

let s:cpo_save = &cpo
set cpo&vim

setlocal comments=:##,:#
setlocal commentstring=#\ %s
setlocal omnifunc=NimComplete
setlocal suffixesadd=.nim 

" These should be set by user configuration
" setlocal formatoptions-=t formatoptions+=croql
" setlocal foldmethod=indent
" setlocal foldlevel=99 " Don't fold newly opened buffers by default

setlocal expandtab  "Make sure that only spaces are used
" Indent is 2 spaces
setl tabstop=2
setl softtabstop=2
setl shiftwidth=2

compiler nim

let &cpo = s:cpo_save
unlet s:cpo_save

