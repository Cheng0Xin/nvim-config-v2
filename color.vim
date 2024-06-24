let g:dark = 'fluoromachine'
let g:light = 'dayfox'

fu! StartsWith(longer, shorter) abort
  return a:longer[0:len(a:shorter)-1] ==# a:shorter
endfunction

let g:color_path = stdpath('config') . "/../.color"

if filereadable(g:color_path)
  let ccback = system('cat ' . g:color_path)
  " echo ccback
  if StartsWith(ccback, "li")
    execute 'colorscheme' g:light
  else
    execute 'colorscheme' g:dark
  endif
else
  execute 'colorscheme' g:dark
endif

command! CCDark call SetColorScheme(g:dark)
command! CCLight call SetColorScheme(g:light)
