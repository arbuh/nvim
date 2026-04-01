-- Find all the available configs here: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	},
	root_markers = {
		"package.json",
		".git",
	},
	settings = {},
}
