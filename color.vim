" if exists('+termguicolors')
"   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"   set termguicolors
" endif

" set background=dark
let g:dark = 'neofusion'
let g:light = 'dayfox'

execute 'colorscheme' g:dark

command! CCDark call SetColorScheme(g:dark)
command! CCLight call SetColorScheme(g:light)
