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
    ['R'] = { '<cmd>lua require(\'utils.runner\').run_code_considering_file_type()<cr>', 'Run script' },
    f = {
        name = 'Find',
        f = { '<cmd>lua require(\'utils.finder\').find_files()<cr>', 'Files' },
        o = { '<cmd>Telescope oldfiles<cr>', 'Old files' },
        g = { '<cmd>Telescope live_grep<cr>', 'Using grep' },
        b = { '<cmd>Telescope current_buffer_fuzzy_find<cr>', 'In the current buffer' },
        R = { '<cmd>lua require(\'spectre\').open_visual({select_word=true})<cr>', 'And replace everywhere' },
        r = { '<cmd>lua require(\'spectre\').open_file_search({select_word=true})<cr>', 'And replace' },
        C = { '<cmd>Telescope commands<cr>', 'Nvim commands' },
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
        m = { '<cmd>lua require(\'utils.git_helpers\').diff_with_main()<cr>', 'Diff with main' },
        c = { '<cmd>DiffviewClose<cr>', 'Close diff' },
    },
}

whichkey.setup(conf)
whichkey.register(mappings, opts)

