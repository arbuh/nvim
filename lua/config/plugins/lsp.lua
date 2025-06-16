require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls" },
}

-- Enabling the LSPs
local lsp_config = require("lspconfig")

lsp_config.lua_ls.setup{}
