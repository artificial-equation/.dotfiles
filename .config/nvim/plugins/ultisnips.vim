let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

function! s:JbzRemoveDebugPrints()
  let save_cursor = getcurpos()
  :g/\/\/\ prdbg$/d
  call setpos('.', save_cursor)
endfunction
command! JbzRemoveDebugPrints call s:JbzRemoveDebugPrints()

au FileType c,cpp nnoremap <buffer><leader>rd :JbzRemoveDebugPrints<CR>
