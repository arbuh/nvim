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
    ['q'] = { '<cmd>qa<cr>', 'Close vim' },
    ['e'] = { '<cmd>NvimTreeFocus<cr>', 'Focus to explorer' },
    ['t'] = { '<cmd>NvimTreeToggle<cr>', 'Toggle explorer' }, 
    ['r'] = { '<cmd>Telescope project<cr>', 'List projects' }, 
    f = {
        name = 'Find',
        F = { '<cmd>lua require(\'utils.finder\').find_files()<cr>', 'Files' },
        b = { '<cmd>Telescope buffers<cr>', 'Buffers' },
        o = { '<cmd>Telescope oldfiles<cr>', 'Old files' },
        f = { '<cmd>Telescope live_grep<cr>', 'Using grep' },
        t = { '<cmd>Telescope current_buffer_fuzzy_find<cr>', 'In the current buffer' },
        c = { '<cmd>Telescope git_commits<cr>', 'Git commits' },
        g = { '<cmd>Telescope repo list<cr>', 'Repositories' },
        s = { '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', 'LSP symbols' },
        r = { '<cmd>lua require(\'spectre\').open_visual({select_word=true})<cr>', 'And replace' },
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
    g = {
        name = 'Git',
        b = { '<cmd>GitBlameToggle<cr>', 'Toggle blame' },
        o = { '<cmd>GitBlameOpenCommitURL<cr>', 'Open commit in a browser' },
        m = { '<cmd>lua require(\'utils.git\').diff_with_main()<cr>', 'Diff with main' },
        c = { '<cmd>DiffviewClose<cr>', 'Close diff' },
    },
}

whichkey.setup(conf)
whichkey.register(mappings, opts)

