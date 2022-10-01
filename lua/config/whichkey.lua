local whichkey = require('which-key')

local conf = {
    window = {
        border = 'single',
        position = 'bottom',
    },
}

local opts = {
    mode = 'n',
    prefix = '',
}

local mappings = {
    f = {
        name = 'Files',
        e = { '<cmd>NvimTreeToggle<cr>', 'Explorer' },
    },
    z = {
        name = 'Packer',
        c = { '<cmd>PackerCompile<cr>', 'Compile' },
        C = { '<cmd>PackerClean<cr>', 'Compile' },
        i = { '<cmd>PackerInstall<cr>', 'Install' },
        s = { '<cmd>PackerSync<cr>', 'Sync' },
        S = { '<cmd>PackerStatus<cr>', 'Status' },
        u = { '<cmd>PackerUpdate<cr>', 'Update' },
    },
}

whichkey.setup(conf)
whichkey.register(mappings, opts)

