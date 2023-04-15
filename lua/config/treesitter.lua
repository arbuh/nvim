local ts_config = require('nvim-treesitter.configs')

local conf = {
    ensure_installed = "all",
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
    textobjects = {
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim 
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner"
            }
        },
        move = {
            enable = true,
            set_jumps = true, 
            -- goto_next_start = {
            --     ['xx'] = '@function.outer',
            --     ['xx'] = '@class.outer'
            -- },
            goto_next_end = {
                [']f'] = '@function.outer',
                [']c'] = '@class.outer'
            },
            goto_previous_start = {
                ['[f'] = '@function.outer',
                ['[c'] = '@class.outer'
            },
            -- goto_previous_end = {
            --     ['xx'] = '@function.outer',
            --     ['xx'] = '@class.outer'
            -- },
        }
    }
}

ts_config.setup(conf)

