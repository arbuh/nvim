-- To highlight changes in Git
return {
	"airblade/vim-gitgutter",
	lazy = false,
	config = function()
		vim.g.gitgutter_map_keys = 0
	end,
}
