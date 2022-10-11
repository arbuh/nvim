local finder = {}

local telescope = require 'telescope.builtin'

function is_inside_git()
    local is_repo = vim.fn.system("git rev-parse --is-inside-work-tree")
    return vim.v.shell_error == 0
end

function finder.find_files()
    if is_inside_git() then
        telescope.git_files()
    else
        telescope.find_files()
    end
end

return finder

