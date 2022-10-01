local conf = {
    display = {
        open_fn = function()
            return require('packer.util').float { border = 'rounded' }
        end,
    }
}

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

local function plugins(use)
    use 'wbthomason/packer.nvim'

    -- Color schema
    use {
        'RRethy/nvim-base16',
        config = function()
            vim.cmd 'colorscheme base16-monokai'
        end,
    }
    
     -- Icons (required by some plugins)
    use {
        'kyazdani42/nvim-web-devicons',
        config = function()
            require('nvim-web-devicons').setup { default = true }
        end,
    }

    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup({
                options = {
                    theme = 'base16'
                }
            })
        end,
    }

    -- Startup screen
    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }

    -- File explorer
    use {
        'kyazdani42/nvim-tree.lua',
        config = function()
            require("config.nvimtree")
        end,
    }
    
    -- Key mappings
    use {
        'folke/which-key.nvim',
        config = function()
            require('config.whichkey')
        end,
    }

    -- Buffers management
    use {
        'akinsho/nvim-bufferline.lua',
        config = function()
            require('config.bufferline')
        end,
    }

    -- Automatically set up configuration after cloning packer.nvim
    if packer_bootstrap then
        require('packer').sync()
    end
end

local packer = require('packer')
packer.init(conf)
packer.startup(plugins)


