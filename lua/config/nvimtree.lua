local nvimtree = require('nvim-tree')

local conf = {
    sort_by = 'case_sensitive',
    open_on_setup = true,
    disable_netrw = true,
    hijack_netrw = true,
    view = {
        number = true,
        adaptive_size = true,
    },
    renderer = {
        group_empty = true,
    },
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
}

vim.g.nvim_tree_respect_buf_cwd = 1

nvimtree.setup(conf)

