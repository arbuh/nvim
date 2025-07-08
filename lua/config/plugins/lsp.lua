require("mason").setup()

-- We still use mason-lspconfig for installing LSP servers instead of mason-tool-installer
-- because it provides automatic LSP configuration and it is official well-integrated solution
mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = { "gopls", "jdtls", "lua_ls", "pyright" },
	automatic_enable = true,
})
