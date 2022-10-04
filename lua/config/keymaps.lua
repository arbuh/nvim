local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Save/Close
keymap('n', '<S-s>', ':w<CR>', default_opts)
keymap('n', '<S-x>', ':qa<CR>', default_opts)

-- Splits
keymap('n', '<C-h>', '<C-w><Left>', default_opts)
keymap('n', '<C-j>', '<C-w><Down>', default_opts)
keymap('n', '<C-k>', '<C-w><Up>', default_opts)
keymap('n', '<C-l>', '<C-w><Right>', default_opts)
keymap('n', '<C-s>', ':sp<CR>', default_opts)
keymap('n', '<C-v>', ':vsp<CR>', default_opts)
keymap('n', '<C-w>', ':q<CR>', default_opts) -- use this command to close a split, otherwise use <S-w> for tabs clossing

-- Buffers
keymap('n', '<S-h>', ':bprevious<CR>', default_opts)
keymap('n', '<S-l>', ':bnext<CR>', default_opts)
keymap('n', '<S-w>', ':bp<bar>sp<bar>bn<bar>bd<CR>', default_opts) -- this commands sequence prevents focus on Nvim tree after buffer delete
keymap('n', '<S-q>', ':BufferLineCloseLeft<CR>', default_opts)
keymap('n', '<S-e>', ':BufferLineCloseRight<CR>', default_opts)

