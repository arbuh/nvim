local bufferline = require('bufferline')

local conf = {
    options = {
        numbers = 'none',
        diagnostics = 'nvim_lsp',
        show_tab_indicators = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
    },
}

bufferline.setup(conf)

