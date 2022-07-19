local default_opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Leader key
keymap('', '<Space>', '<Nop>', default_opts)
vim.g.mapleader = ' '

-- Window movement
keymap('n', '<C-h>', '<cmd>wincmd h<CR>')
keymap('n', '<C-j>', '<cmd>wincmd j<CR>')
keymap('n', '<C-k>', '<cmd>wincmd k<CR>')
keymap('n', '<C-l>', '<cmd>wincmd l<CR>')

-- Buffer movement
keymap('n', '<S-n>', '<cmd>bnext<CR>')
keymap('n', '<S-p>', '<cmd>bprevious<CR>')

-- Resize windows
keymap('n', '<S-h>', '<cmd>vertical resize +2<CR>')
keymap('n', '<S-j>', '<cmd>resize -2<CR>')
keymap('n', '<S-k>', '<cmd>resize +2<CR>')
keymap('n', '<S-l>', '<cmd>vertical resize -2<CR>')

-- Quick ops
keymap('n', '<leader>w', '<cmd>w<CR>')
keymap('n', '<leader>v', '<cmd>vsplit<CR>')
keymap('n', '<leader>s', '<cmd>split<CR>')

-- Comment
keymap("n", "<leader>/", "<Plug>(comment_toggle_current_linewise)")
keymap("x", "<leader>/", "<Plug>(comment_toggle_linewise_visual)")

