-- Find all the available configs here: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
return {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_markers = {
		"go.work",
		"go.mod",
		".git",
	},
	settings = {
	    -- https://tip.golang.org/gopls/settings
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
			semanticTokens = true,
		},
	},
}
