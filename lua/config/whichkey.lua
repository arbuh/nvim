local whichkey = require('which-key')

local conf = {
    window = {
        border = 'single',
        position = 'bottom',
    },
}

local mappings = {
    f = {
      name = 'Files',
        e = { '<cmd>NvimTreeToggle<cr>', 'Explorer' },
    },
}

whichkey.setup(conf)
whichkey.register(mappings)

