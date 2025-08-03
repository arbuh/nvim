require("mason").setup()

-- We still use mason-lspconfig for installing LSP servers instead of mason-tool-installer
-- because it provides automatic LSP configuration and it is official well-integrated solution
mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = { "gopls", "jdtls", "lua_ls", "pyright" },
	automatic_enable = true,
})

-- Language specific config
-- Find all the available configs here: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
local servers = {
	gopls = {
		settings = {
			gopls = {
				analyses = {
					unusedparams = true,
				},
				staticcheck = true,
				semanticTokens = true,
			},
		},
	},
	pyright = {
		settings = {
			python = {
				analysis = {
					typeCheckingMode = "basic",
					semanticHighlighting = true,
				},
			},
		},
	},
}

local lspconfig = require("lspconfig")
for server, config in pairs(servers) do
	lspconfig[server].setup(config)
end
