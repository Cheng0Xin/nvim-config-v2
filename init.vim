" --------------
" Basic setup
" --------------
set number
set relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set clipboard=unnamedplus
set foldmethod=indent

filetype off
filetype plugin indent on

" --------------
" set up plugin
" --------------
call plug#begin()
Plug 'gpanders/nvim-parinfer'                                  " Supporting Lisp like edit
                                                               " Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release'}
Plug 'julienvincent/nvim-paredit'                              " Required by parpar
Plug 'dundalek/parpar.nvim'                                    " ParPar = Parinfer + Paredit

Plug 'nvim-lualine/lualine.nvim'                               " Status line
Plug 'nvim-tree/nvim-web-devicons'                             " If you want to have icons in your statusline choose one of these
Plug 'tpope/vim-surround'                                      " Surround add/change
Plug 'tpope/vim-repeat'                                        " Repeat some cmds; also support vim-surround
Plug 'terryma/vim-expand-region'                               " Expand region +,-, define your own keys
                                                               " - map K <Plug>(expand_region_expand)
                                                               " - map J <Plug>(expand_region_shrink)
Plug '/opt/homebrew/opt/fzf'                                   " FZF fuzzy files finder
Plug 'justinmk/vim-sneak'                                      " Quick jump leader-key 'f' and 'F', two keys are necessary
Plug 'farmergreg/vim-lastplace'                                " Jump to last edit position when opening
Plug 'mhinz/vim-signify', { 'tag': 'legacy' }                  " Visualize git modifies
Plug 'preservim/nerdtree'                                      " File explore
Plug 'godlygeek/tabular'                                       " Aligning text Tabularize / =
Plug 'skywind3000/asyncrun.vim'                                " Async execute shell commands
Plug 'tpope/vim-commentary'                                    " Comment
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
Plug 'arthurxavierx/vim-unicoder'                              " Input unicode, C-] to end input
Plug 'psliwka/vim-smoothie'                                    " Smooth scroll
Plug 'tpope/vim-vividchalk'                                    " Pair the bracket (show different color)
Plug 'MattesGroeger/vim-bookmarks'                             " Bookmark manage
Plug 'LunarWatcher/auto-pairs'                                 " Auto pair
Plug 'lukas-reineke/indent-blankline.nvim'                                  " Indicator columns

" Theme
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }               " spaceduck
Plug 'diegoulloao/neofusion.nvim'                                   " neofusion
Plug 'folke/tokyonight.nvim'                                        " tokyonight-{ night, storm, day, moon }
Plug 'rebelot/kanagawa.nvim'                                        " kanagawa-{ wave, dragon, lotus }
Plug 'EdenEast/nightfox.nvim'                                       " nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox
Plug 'maxmx03/fluoromachine.nvim'                                   " fluoromachine
Plug 'hachy/eva01.vim'                                              " eva01 eva01-LCL
Plug 'Shadorain/shadotheme'                                         " shado

" Language support
Plug 'kaarmu/typst.vim'                                             " Syntax hl for Typst
Plug 'yaegassy/coc-pylsp', {'do': 'yarn install --frozen-lockfile'} " LSP for python
Plug 'Olical/conjure'                                               " Clojure

" Plugin for nvim
Plug 'gen740/SmoothCursor.nvim'                             " Smooth cursor
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Treesitter
Plug 'nvim-lua/plenary.nvim'                                " Required by lean
Plug 'neovim/nvim-lspconfig'                                " Required by lean
Plug 'Julian/lean.nvim'                                     " Lean lang support
Plug 'folke/zen-mode.nvim'                                  " Zen mode
Plug 'stevearc/conform.nvim'                                " Formatter

" Tabview
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim'     " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'

call plug#end()


" --------------
" Color scheme
" --------------
lua require('plug-neofusion')
source ~/.config/nvim/color.vim

" --------------
" Plugin conf. details
" --------------
source ~/.config/nvim/details.vim

" --------------
" Keymaps
" --------------
source ~/.config/nvim/keymaps.vim

" --------------
" Autocmds
" --------------
source ~/.config/nvim/autocmds.vim

" --------------
" Additional plugin setups for nvim
" --------------
lua require('plug-smoothcursor')
lua require('plug-lean')
lua require('plug-treesitter')
lua require('plug-lualine')
lua require('plug-coc')
lua require('plug-indent-visual')
lua require('plug-formatter')
lua require('plug-tabview')
