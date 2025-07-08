-- Color scheme
return {
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000,
	config = function()
		-- vim.api.nvim_exec(
		-- 	[[
		--               if has('termguicolors')
		--                   set termguicolors
		--               endif
		--           ]],
		-- 	false
		-- )
		vim.g.sonokai_style = "maia"
		-- vim.g.sonokai_better_performance = 1
		-- vim.cmd("colorscheme sonokai")
        vim.g.sonokai_enable_italic = true
        vim.cmd.colorscheme('sonokai')
	end,
}

