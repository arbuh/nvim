-- Completion engine
return {
	"hrsh7th/nvim-cmp",
	-- `hrsh7th/nvim-cmp` itself doesn't have completion sources.
	-- As a result, we also need to install the plugins that provide completion candidates:
	dependencies = {
		"hrsh7th/cmp-nvim-lsp", -- LSP
		"hrsh7th/cmp-buffer", -- Word from the open buffers
		"hrsh7th/cmp-path", -- Filesystem paths
		"hrsh7th/cmp-cmdline", -- Nvim commands
		"hrsh7th/cmp-nvim-lua", -- Nvim Lua API
	},
}
