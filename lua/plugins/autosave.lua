-- Automatically save changes in files
return {
	"okuuva/auto-save.nvim",
	version = "*",
	event = { "InsertLeave", "TextChanged" },
	opts = {
		enabled = true,
		-- We enable autosave only inside git repositories to prevent accidental editing of for instance system files
		condition = function(buf)
			local git_helpers = require("utils.git_helpers")
			return git_helpers.is_inside_git()
		end,
	},
}
