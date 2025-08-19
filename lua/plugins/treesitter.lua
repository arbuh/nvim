-- Syntax tree
return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			auto_install = true,
			ensure_installed = { "go", "java", "lua", "markdown", "python", "scala", "vim", "vimdoc" },
			sync_install = false,
			highlight = {
				enable = true,
				disable = {"go"},
				-- To prevent duplicate highlights and slowing down the editor
                additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
		})
	end,
}
