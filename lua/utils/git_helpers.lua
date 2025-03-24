local M = {}

local diffview = require("diffview")

M.diff_with_main = function()
    local default_branch = vim.fn.system("git remote show origin | sed -n '/HEAD branch/s/.*: //p'")
    local cleaned = string.gsub(default_branch, "\n", "")
    diffview.open("origin/"..cleaned)
end

M.is_inside_git = function()
    vim.fn.system("git rev-parse --is-inside-work-tree")
    return vim.v.shell_error == 0
end

return M

