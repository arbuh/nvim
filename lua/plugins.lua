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

    use {
        'nvim-treesitter/nvim-treesitter',
        requires = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        config = function()
            require("config.treesitter")
        end,
    }

    -- Color schema
    use {
        'sainnhe/sonokai',
        config = function()
            -- Enable the 24-bit true color, if it is supported by the terminal emulator
            vim.api.nvim_exec([[
                if has('termguicolors')
                    set termguicolors
                endif
            ]], false)
            vim.g.sonokai_style = 'maia'
            vim.g.sonokai_better_performance = 1
            vim.cmd('colorscheme sonokai')
        end,
    }

     -- Icons (required by some plugins)
    use {
        'kyazdani42/nvim-web-devicons',
        config = function()
            require('nvim-web-devicons').setup { default = true }
        end,
    }

    -- Helper libraries (required by some plugins)
    use 'nvim-lua/plenary.nvim'

    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require("config.lualine")
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

    -- Telescope (Advanced UI for fuzzy search)
    use {
        'nvim-telescope/telescope.nvim',
        opt = true,
        cmd = "Telescope",
        module = 'telescope',
        config = function()
            require('config.telescope')
        end,
        wants = {
            'popup.nvim',
            'telescope-fzf-native.nvim',
            'telescope-project.nvim',
            'telescope-repo.nvim',
             'project.nvim',
         },
         requires = {
            'nvim-lua/popup.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
            'nvim-telescope/telescope-project.nvim',
            'cljoly/telescope-repo.nvim',
            'ahmedkhalf/project.nvim',
        },
    }

    -- Automatic change of the working directory on a file open
    use 'airblade/vim-rooter'

    -- Git blame
    use {
        'f-person/git-blame.nvim',
        config = function()
            vim.g.gitblame_enabled = 0
            vim.g.gitblame_date_format = '%d-%m-%y %H:%M'
        end,
    }

    -- Git diff
    use 'sindrets/diffview.nvim'

    -- Git highlight changes
    use {
        'airblade/vim-gitgutter',
        config = function()
            vim.g.gitgutter_map_keys = 0
        end,
    }

    -- DAP
    use {
        "mfussenegger/nvim-dap",
        requires = {
            "rcarriga/nvim-dap-ui",
            "mfussenegger/nvim-dap-python",
        },
        config = function()
            require("config.dap")
        end,
    }

    -- LSP, including Metals
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        'scalameta/nvim-metals',
    }
    use {
        "neovim/nvim-lspconfig",
        config = function()
            require("config.lsp")
        end,
    }

    -- Code completion
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
            "hrsh7th/cmp-buffer",
        },
        config = function()
            require("config.cmp")
        end,
    }

    -- Comment lines considering file type
    use 'tpope/vim-commentary'

    -- Find and replace
    use 'windwp/nvim-spectre'

    -- Auto-close for brackets and quotes
    use {
        'm4xshen/autoclose.nvim',
        config = function()
            require("autoclose").setup()
        end,
    }

    -- Auto-save
    use {
        'Pocco81/auto-save.nvim',
        config = function()
            require("config.autosave")
        end,
    }

    -- Auto-save
    use {
        'rmagatti/auto-session',
        config = function()
            require("config.autosession")
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


