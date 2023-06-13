local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Save
keymap('n', '<S-w>', ':w<CR>', default_opts)

-- Splits
keymap('n', '<C-h>', '<C-w><Left>', default_opts)
keymap('n', '<C-j>', '<C-w><Down>', default_opts)
keymap('n', '<C-k>', '<C-w><Up>', default_opts)
keymap('n', '<C-l>', '<C-w><Right>', default_opts)
keymap('n', '<C-s>', ':sp<CR>', default_opts)
keymap('n', '<C-v>', ':vsp<CR>', default_opts)
keymap('n', '<C-q>', ':q<CR>', default_opts) -- use this command to close a split, otherwise use <S-w> for tabs clossing
keymap('n', '<C-b>', '<C-w><Down>:q<C-w><Right><CR>', default_opts) -- close the horizontal bottom split

-- Buffers
keymap('n', '<S-h>', ':bprevious<CR>', default_opts)
keymap('n', '<S-l>', ':bnext<CR>', default_opts)
keymap('n', '<S-q>', ':bp<bar>sp<bar>bn<bar>bd<CR>', default_opts) -- this commands sequence prevents focus on Nvim tree after buffer delete
keymap('n', '<S-s>', ':BufferLineCloseLeft<CR>', default_opts)
keymap('n', '<S-d>', ':BufferLineCloseRight<CR>', default_opts)

