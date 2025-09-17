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
    -- https://tip.golang.org/gopls/settings
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
    -- https://microsoft.github.io/pyright/#/configuration
	pyright = {
		settings = {
			python = {
				analysis = {
					typeCheckingMode = "basic",
					useLibraryCodeForTypes = true,
				},
			},
		},
	},
}

-- To make sure we request all LSP server capabilities
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")
for server, config in pairs(servers) do
    config['capabilities'] = capabilities
	lspconfig[server].setup(config)
end
