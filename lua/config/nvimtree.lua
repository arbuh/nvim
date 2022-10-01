require('nvim-tree').setup({
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
})

