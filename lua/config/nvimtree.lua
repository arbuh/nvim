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
}

nvimtree.setup(conf)

