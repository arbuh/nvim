-- "Classic" Git blame that shows an author for all the lines
return {
	{
		"FabijanZulj/blame.nvim",
		lazy = true,
		cmd = "BlameToggle",
		config = function()
			require("blame").setup({})
		end,
	},
}
