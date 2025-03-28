local whichkey = require('which-key')
local git_helpers = require('utils.git_helpers')

-- General
whichkey.add({
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle explorer", mode = "n" },
    { "<leader>l", "<cmd>Lazy<cr>", desc = "Lazy", mode = "n" },
})

-- Search
local builtin = require('telescope.builtin')
whichkey.add({
    { "<leader>s", group = "Search" },
    { "<leader>sf", builtin.find_files, desc = "Search for files", mode = "n" },
    { "<leader>ss", builtin.grep_string, desc = "Search for current selection/cursor", mode = "n" },
    { "<leader>sg", builtin.live_grep, desc = "Live grep", mode = "n" },
    { "<leader>so", builtin.oldfiles, desc = "Search for previously opened files", mode = "n" },
    { "<leader>sr", "<cmd>GrugFar<cr>", desc = "Search and replace", mode = "n" },
})

-- Git
whichkey.add({
    { "<leader>g", group = "Git" },
    { "<leader>gb", "<cmd>BlameToggle<cr>", desc = "Toggle Git blame", mode = "n" },
    { "<leader>gdl", "<cmd>DiffviewOpen<cr>", desc = "Diff with local", mode = "n" },
    { "<leader>gdo", function() git_helpers.diff_with_main() end, desc = "Diff with origin", mode = "n" },
    { "<leader>gdc", "<cmd>DiffviewClose<cr>", desc = "Close diff", mode = "n" },
})

--[[

local mappings = {
    f = {
        name = 'Find',
        f = { '<cmd>lua require(\'utils.search_helpers\').find_files()<cr>', 'Files' },
        o = { '<cmd>Telescope oldfiles<cr>', 'Old files' },
        g = { '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', 'Using grep' },
        b = { '<cmd>Telescope current_buffer_fuzzy_find<cr>', 'In the current buffer' },
        R = { '<cmd>lua require(\'spectre\').open_visual({select_word=true})<cr>', 'And replace everywhere' },
        r = { '<cmd>lua require(\'spectre\').open_file_search({select_word=true})<cr>', 'And replace' },
        C = { '<cmd>lua require(\'telescope.builtin\').commands()<cr>', 'Nvim commands' },
    },
    p = {
        name = 'Packer',
        c = { '<cmd>PackerCompile<cr>', 'Compile' },
        d = { '<cmd>PackerClean<cr>', 'Clean' },
        i = { '<cmd>PackerInstall<cr>', 'Install' },
        s = { '<cmd>PackerSync<cr>', 'Sync' },
        S = { '<cmd>PackerStatus<cr>', 'Status' },
        u = { '<cmd>PackerUpdate<cr>', 'Update' },
    },
    g = {
        name = 'Git',
        b = { '<cmd>GitBlameToggle<cr>', 'Toggle blame' },
        o = { '<cmd>GitBlameOpenCommitURL<cr>', 'Open commit in a browser' },
        m = { '<cmd>lua require(\'utils.git_helpers\').diff_with_main()<cr>', 'Diff with main' },
        c = { '<cmd>DiffviewClose<cr>', 'Close diff' },
    },
}

whichkey.add(mappings)
]]

