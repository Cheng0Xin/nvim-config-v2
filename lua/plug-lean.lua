require("lean").setup({
  lsp = { on_attach = vim.lsp.buf.code_action },
  mappings = true,
})
