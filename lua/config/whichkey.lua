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

local find_mapping = nil

if PLUGINS.fzf_lua.enabled then
    find_mapping = {
        name = 'Find',
        f = { '<cmd>lua require(\'utils.finder\').find_files()<cr>', 'Files' },
        b = { '<cmd>FzfLua buffers<cr>', 'Buffers' },
        o = { '<cmd>FzfLua oldfiles<cr>', 'Old files' },
        g = { '<cmd>lua require(\'utils.finder\').grep_files()<cr>', 'Using grep' },
        t = { '<cmd>lua require(\'utils.finder\').test_plugins()<cr>', 'Test' },
    }
end

local mappings = {
    ['e'] = { '<cmd>NvimTreeFocus<cr>', 'Focus to explorer' },
    ['t'] = { '<cmd>NvimTreeToggle<cr>', 'Toggle explorer' }, 
    f = find_mapping,
    p = {
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

