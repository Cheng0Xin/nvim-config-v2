require('nvim-treesitter.configs').setup({
  ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "python", "racket", "rust", "latex", "cmake" },
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  }
})
