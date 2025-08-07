-- File tree browser
return {
	"nvim-tree/nvim-tree.lua",
	lazy = true,
	cmd = "NvimTreeToggle",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		update_focused_file = {
			enable = true,
			update_root = false,
		},
        filters = {
            git_ignored = false,
        }
	},
}
