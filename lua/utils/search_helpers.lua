local search_helpers = {}

local git_helpers = require("utils.git_helpers")

function search_helpers.find_files()
	local telescope = require("telescope.builtin")
	if git_helpers.is_inside_git() then
		telescope.git_files()
	else
		telescope.find_files()
	end
end

function search_helpers.get_visual_selection()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg("v")
	vim.fn.setreg("v", {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ""
	end
end

return search_helpers
