local nvimtree = require('nvim-tree')

local conf = {
    sort_by = 'case_sensitive',
    disable_netrw = true,
    hijack_netrw = true,
    view = {
        number = false,
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
    respect_buf_cwd = true,
    filters = {
        dotfiles = false,
    },
    git = {
        enable = true,
        ignore = false
    }
}

nvimtree.setup(conf)

