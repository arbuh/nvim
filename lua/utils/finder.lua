local M = {}

local fzf = require 'fzf-lua'

function is_inside_git()
    local is_repo = vim.fn.system("git rev-parse --is-inside-work-tree")
    return vim.v.shell_error == 0
end

function M.find_files()
    if is_inside_git() then
        fzf.git_files()
    else
        fzf.files()
    end
end

function M.grep_files()
    if is_inside_git() then
        fzf.live_grep({ cmd = "git grep --line-number --column --color=always" })
    else
        fzf.live_grep()
    end
end

return M

