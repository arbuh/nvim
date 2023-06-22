local opt = vim.opt
local g = vim.g

-- General
opt.wildmode = 'longest,list' -- get bash-like tab completions
opt.clipboard = 'unnamedplus' -- using system clipboard
opt.updatetime = 250          -- to faster updates of airblade/vim-gitgutter

-- Lines
opt.number = true     -- add line numbers
opt.cursorline = true -- highlight current cursorline
opt.ttyfast = true    -- speed up scrolling in Vim" Speed up scrolling in Vim

-- Coding
opt.autoindent = true                -- indent a new line the same amount as the line just typed
vim.cmd('filetype plugin indent on') -- allow auto-indenting depending on file type
opt.tabstop = 4                      -- number of columns occupied by a tab
opt.shiftwidth = 4                   -- width for autoindents
opt.expandtab = true                 -- converts tabs to white space
vim.cmd('syntax on')                 -- syntax highlighting

-- Leader
g.mapleader = ';'

-- Search
opt.ignorecase = true -- case insensitive
opt.smartcase = true  -- smart search
opt.hlsearch = true   -- highlight search
opt.incsearch = true  -- incremental search
opt.path:remove '/usr/include' -- remove /usr/include from the search area
opt.path:append '**' -- add all subdirectories of the current project
opt.wildignorecase = true -- make the search case-insensitive
opt.wildignore:append '**/.git/*'
opt.wildmenu = true
opt.wildmode='full'

-- Spelling
opt.spell = true
opt.spelllang = 'en_us'
opt.spelloptions = 'camel'
vim.cmd([[
    fun! IgnoreCamelCaseSpell()
        syn match myExCapitalWords +\<\w*[A-Z]\K*\>+ contains=@NoSpell
    endfun

    autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()
]])

-- Recommended session options for the auto-session plugin
opt.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"


