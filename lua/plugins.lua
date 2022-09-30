local conf = {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
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
        'tanvirtin/monokai.nvim',
        config = function()
            vim.cmd "colorscheme monokai_soda"
        end,
    }

    -- Automatically set up configuration after cloning packer.nvim
    if packer_bootstrap then
        print "Restart Neovim to finish the packer.nvim setup!"
        require('packer').sync()
    end
end

local packer = require('packer')
packer.init(conf)
packer.startup(plugins)

