local lualine = require('lualine')

local conf = {
    options = {
        theme = 'auto',
    },
    sections = {
        lualine_c = {
            {'filename',
                path = 1,
            },
        },
    },
}

lualine.setup(conf)

