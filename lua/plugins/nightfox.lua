return {
	"EdenEast/nightfox.nvim",
	config = function()
		require("nightfox").setup({
			options = {
				transparent = false,
				terminal_colors = true,
				dim_inactive = false,
				styles = {
					comments = "italic",
					conditionals = "NONE",
					constants = "NONE",
					functions = "NONE",
					keywords = "bold",
					numbers = "NONE",
					operators = "NONE",
					strings = "NONE",
					types = "italic,bold",
					variables = "NONE",
				},
				module_default = true,
			},
			palettes = {
				nordfox = {
					bg0 = "#1a1e24", -- Darker background
					bg1 = "#2e3440", -- Default background (main editor)
					bg2 = "#3b4252", -- Sidebar
					bg3 = "#434c5e", -- Floats
				},
			},
		})
		vim.cmd.colorscheme("nordfox")
	end,
}
