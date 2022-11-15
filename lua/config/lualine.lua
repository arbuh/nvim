local lualine = require('lualine')

local conf = {
    options = {
        theme = 'base16',
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

