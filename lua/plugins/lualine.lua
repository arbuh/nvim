-- Status line at the bottom
return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		theme = "sonokai",
		sections = {
			lualine_c = {
				{ "filename", path = 1 },
			},
		},
	},
}
