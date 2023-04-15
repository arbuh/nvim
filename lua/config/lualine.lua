local lualine = require('lualine')

local conf = {
    options = {
        theme = 'sonokai',
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

