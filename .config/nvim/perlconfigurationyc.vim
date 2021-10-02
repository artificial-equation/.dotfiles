
function! LooksLikePerl6 ()
  if getline(1) =~# '^#!.*/bin/.*perl6'
    set filetype=perl6
  else
    for i in [1,2,3,4,5]
      if getline(i) == 'use v6;'
        set filetype=perl6
        break
      endif
    endfor
  endif
endfunction

au bufRead *.pm,*.t,*.pl call LooksLikePerl6()


