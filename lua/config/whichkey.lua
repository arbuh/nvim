local whichkey = require('which-key')

local conf = {
    window = {
        border = 'single',
        position = 'bottom',
    },
}

local opts = {
    mode = 'n',
    prefix = '<leader>',
}

local mappings = {
    ['e'] = { '<cmd>NvimTreeFocus<cr>', 'Focus to explorer' },
    ['t'] = { '<cmd>NvimTreeToggle<cr>', 'Toggle explorer' }, 
    ['r'] = { '<cmd>Telescope project<cr>', 'List projects' }, 
    f = {
        name = 'Find',
        f = { '<cmd>lua require(\'utils.finder\').find_files()<cr>', 'Files' },
        b = { '<cmd>Telescope buffers<cr>', 'Buffers' },
        o = { '<cmd>Telescope oldfiles<cr>', 'Old files' },
        g = { '<cmd>Telescope live_grep<cr>', 'Using grep' },
        t = { '<cmd>Telescope current_buffer_fuzzy_find<cr>', 'In the current buffer' },
        c = { '<cmd>Telescope git_commits<cr>', 'Git commits' },
        r = { '<cmd>Telescope repo list<cr>', 'Repositories' },
    },
    p = {
        name = 'Packer',
        c = { '<cmd>PackerCompile<cr>', 'Compile' },
        d = { '<cmd>PackerClean<cr>', 'Clean' },
        i = { '<cmd>PackerInstall<cr>', 'Install' },
        s = { '<cmd>PackerSync<cr>', 'Sync' },
        S = { '<cmd>PackerStatus<cr>', 'Status' },
        u = { '<cmd>PackerUpdate<cr>', 'Update' },
    },
}

whichkey.setup(conf)
whichkey.register(mappings, opts)

