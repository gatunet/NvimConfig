local default_opts = { noremap = true, silent = true}

-- Leader key
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', default_opts)
vim.g.mapleader = ' '

-- Comment
vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", default_opts)
vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", default_opts)

-- Better movement
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>wincmd h<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>wincmd j<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>wincmd k<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>wincmd l<CR>', default_opts)

-- Harpoon
vim.api.nvim_set_keymap('n', '<A-1>', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<A-2>', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<A-3>', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<A-4>', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<A-5>', '<cmd>lua require("harpoon.ui").nav_file(5)<CR>', default_opts)
