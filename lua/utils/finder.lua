local finder = {}

local telescope = require 'telescope.builtin'
local git_helpers = require 'utils.git_helpers'

function finder.find_files()
    if git_helpers.is_inside_git() then
        telescope.git_files()
    else
        telescope.find_files()
    end
end

return finder

