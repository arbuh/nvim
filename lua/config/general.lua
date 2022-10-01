local opt = vim.opt
local g = vim.g

-- General
opt.wildmode = 'longest,list' -- get bash-like tab completions
opt.clipboard = 'unnamedplus' -- using system clipboard

-- Lines
opt.number = true     -- add line numbers
opt.cursorline = true -- highlight current cursorline
opt.ttyfast = true    -- speed up scrolling in Vim" Speed up scrolling in Vim

-- Search
opt.ignorecase = true -- case insensitive
opt.smartcase = true  -- smart search
opt.hlsearch = true   -- highlight search
opt.incsearch = true  -- incremental search

-- Coding
opt.autoindent = true                -- indent a new line the same amount as the line just typed
vim.cmd('filetype plugin indent on') -- allow auto-indenting depending on file type
opt.tabstop = 4                      -- number of columns occupied by a tab
opt.shiftwidth = 4                   -- width for autoindents
opt.expandtab = true                 -- converts tabs to white space
opt.shiftwidth = 4                   -- width for autoindents
vim.cmd('syntax on')                -- syntax highlighting

-- Leader
g.mapleader = ';'

