require("config.lsp.whichkey")

local servers = {
  html = {},
  jsonls = {},
  pyright = {},
  sumneko_lua = {},
  vimls = {},
}

local function on_attach(client, bufnr)
  -- Enable completion triggered by <C-X><C-O>
  -- See `:help omnifunc` and `:help ins-completion` for more information.
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Use LSP as the handler for formatexpr.
  -- See `:help formatexpr` for more information.
  vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")
end

local opts = {
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  },
}

require("config.lsp.installer").setup(servers, opts)
require("config.lsp.metals")

