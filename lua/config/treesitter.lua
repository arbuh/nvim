local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
ts_update()

local ts_config = require('nvim-treesitter.configs')

local conf = {
    ensure_installed = "all",
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}

ts_config.setup(conf)

