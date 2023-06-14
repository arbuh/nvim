local git_helpers = {}

local diffview = require "diffview"

function git_helpers.diff_with_main()
    local default_branch = vim.fn.system("git remote show origin | sed -n '/HEAD branch/s/.*: //p'")
    local cleaned = string.gsub(default_branch, "\n", "")

    diffview.open("origin/"..cleaned)
end

function git_helpers.is_inside_git()
    vim.fn.system("git rev-parse --is-inside-work-tree")
    return vim.v.shell_error == 0
end

return git_helpers

