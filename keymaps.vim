" Exit normal
inoremap jk <ESC>
inoremap jj <ESC>
inoremap kk <ESC>

" Movement
nnoremap <C-h> ^
nnoremap <C-l> $
vnoremap <C-h> ^
vnoremap <C-l> $

" make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

" Movement tabs
nnoremap <S-h> :tabprevious<CR>
nnoremap <S-l> :tabnext<CR>

" Savefile
nnoremap ss :w<CR>
nnoremap ZZ :wqa<CR>

" Better yark
nnoremap Y yy

" Plugin support required
nnoremap <SPACE>o :FZF<CR>
map s <Plug>Sneak_s
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
" map F <Plug>Sneak_S
nnoremap <SPACE>e :NERDTreeToggle<CR>
nnoremap <SPACE>x :AsyncRun -cwd=<root> make<CR>
nnoremap <SPACE>f :CCF<CR>
inoremap <silent><expr> <c-x><c-o> coc#refresh()

" ----------
" Toggle spell
" ----------
function! ToggleSpell()
  if &spell
    set nospell
    echo "Spell checking disabled"
  else
    set spell
    echo "Spell checking enabled"
  endif
endfunction
command! ToggleSpell call ToggleSpell()
nnoremap <SPACE>s :ToggleSpell<CR>

" --------------
" Commands
" --------------
" Format code
" Function to conditionally format the document
function! FormatDocument()
  if exists(':CocCommand')
    " Check if Coc formatting provider is available
    if CocHasProvider('format')
      Format
    else
      " normal! gg=G
    endif
  else
    " normal! gg=G
  endif
endfunction
command! CCF call FormatDocument()

" Tabularize
command! -range -nargs=1 CCTab <line1>,<line2>Tabularize /<args>

" -----------------
" Typst detect main
" -----------------
command! CCPin call TypstSetupMain()

function! TypstSetupMain()
  let root_directory = getcwd()
  let cmd_arg = "file://" . root_directory . "/main.typ"
  let cmd = 'CocCommand typst-lsp.doPinMain ' . cmd_arg
  echo cmd
  execute cmd
endfunction


" -----------------
" Cyc select color scheme
" -----------------
let g:color_scheme_idx = 0
let g:list_of_colorschemes = [
      \ 'spaceduck', 'neofusion', 'nightfox',
      \ 'dayfox', 'dawnfox', 'duskfox', 'nordfox', 'terafox', 'carbonfox', 'fluoromachine',
      \ 'eva01', 'eva01-LCL', 'shado',
      \ 'tokyonight-night', 'tokyonight-storm', 'tokyonight-day', 'tokyonight-moon',
      \ 'kanagawa-wave', 'kanagawa-dragon', 'kanagawa-lotus'
      \ ]

function! CycSetColorScheme(colors, idx)
  let total_size = len(g:list_of_colorschemes)
  call SetColorScheme(a:colors[g:color_scheme_idx])
  let g:color_scheme_idx = (g:color_scheme_idx + a:idx) % total_size
endfunction

function! SetColorScheme(name)
  execute 'colorscheme' a:name
  execute 'colorscheme'
endfunction

nnoremap <F9> :call CycSetColorScheme(g:list_of_colorschemes, 1)<CR>
nnoremap <F7> :call CycSetColorScheme(g:list_of_colorschemes, -1)<CR>

" Zen mode
nnoremap <SPACE>z :ZenMode<CR>
