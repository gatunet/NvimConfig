
local default_opts = { noremap = true, silent = true}

-- Leader key
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', default_opts)
vim.g.mapleader = ' '

-- Better movement
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>wincmd h<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>wincmd j<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>wincmd k<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>wincmd l<CR>', default_opts)

vim.api.nvim_set_keymap('n', 'W', '<cmd>w<CR>', { noremap = true }) -- quick save

vim.api.nvim_set_keymap('n', 'C', '<cmd>nohl<CR>', { noremap = true }) -- quick save

vim.api.nvim_set_keymap('n', '<Leader>t', '<cmd>terminal<CR>', { noremap = true }) -- quick terminal
