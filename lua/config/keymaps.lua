local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

--[[
local search_helpers = require 'utils.search_helpers'
]]

-- Save
keymap("n", "<S-w>", ":w<CR>", default_opts)

-- Splits
keymap("n", "<C-h>", "<C-w><Left>", default_opts)
keymap("n", "<C-j>", "<C-w><Down>", default_opts)
keymap("n", "<C-k>", "<C-w><Up>", default_opts)
keymap("n", "<C-l>", "<C-w><Right>", default_opts)
keymap("n", "<C-s>", ":sp<CR>", default_opts)
keymap("n", "<C-v>", ":vsp<CR>", default_opts)
keymap("n", "<C-w>", ":q<CR>", default_opts) -- use this command to close a split, otherwise use <S-q> for tabs closing
keymap("n", "<C-b>", "<C-w><Down>:q<C-w><Right><CR>", default_opts) -- close the horizontal bottom split

-- Buffers
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-j>", ":bprevious<CR>", default_opts) -- to align with the Vimium browser plugin shortcuts
keymap("n", "<S-l>", ":bnext<CR>", default_opts)
keymap("n", "<S-k>", ":bnext<CR>", default_opts) -- to align with the Vimium browser plugin shortcuts
-- Close the current tab
vim.keymap.set("n", "<S-w>", function()
	Snacks.bufdelete()
end, default_opts)
-- Close all tabs except the current one
vim.keymap.set("n", "<S-d>", function()
	Snacks.bufdelete.other()
end, default_opts)
-- Intellij like switch between the last buffers, but we use Ctrl instead of Shift because the most terminal emulators do not recognize Ctrl + Tab
keymap("n", "<S-Tab>", ":b#<CR>", default_opts)
keymap("n", "<S-f>", ":BufferLineTogglePin<CR>", default_opts)

-- Search
vim.keymap.set("v", "<S-f>", function()
	require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } })
end, default_opts)

-- Terminal
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], default_opts)
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], default_opts)

