-- Find all the available configs here: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
return {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	root_markers = {
		".git",
	},
	settings = {
		-- https://github.com/neovim/nvim-lspconfig/blob/d696e36d5792daf828f8c8e8d4b9aa90c1a10c2a/lsp/rust_analyzer.lua#L117
		["rust-analyzer"] = {
			lens = {
				debug = {
					enable = true,
				},
				enable = true,
				implementations = {
					enable = true,
				},
				references = {
					adt = {
						enable = true,
					},
					enumVariant = {
						enable = true,
					},
					method = {
						enable = true,
					},
					trait = {
						enable = true,
					},
				},
				run = {
					enable = true,
				},
				updateTest = {
					enable = true,
				},
			},
		},
	},
}
