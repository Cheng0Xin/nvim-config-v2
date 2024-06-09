" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Cusor type
augroup CursorShape
  autocmd!
  autocmd InsertEnter * silent! let &t_SI = "\e[5 q"
  autocmd InsertLeave * silent! let &t_EI = "\e[1 q"
augroup END

" Comment strings
autocmd FileType typst setlocal commentstring=//%s
autocmd FileType racket setlocal commentstring=;;%s
autocmd FileType lean setlocal commentstring=--%s
autocmd FileType python setlocal commentstring=#%s
" latex
" rust

" Tab sizes
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType rust setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType racket setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType typst setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType lean setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
