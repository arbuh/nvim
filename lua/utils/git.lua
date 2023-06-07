local git = {}

local diffview = require "diffview"

function git.diff_with_main()
    local default_branch = vim.fn.system("git remote show origin | sed -n '/HEAD branch/s/.*: //p'")
    local cleaned = string.gsub(default_branch, "\n", "")

    diffview.open("origin/"..cleaned)
end

return git

