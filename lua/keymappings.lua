
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

-- Nvim Tree
vim.api.nvim_set_keymap('n', '<Leader>e', '<cmd>:NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>r', '<cmd>:NvimTreeRefresh<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>n', '<cmd>:NvimTreeFindFile<CR>', { noremap = true })

-- Barbar
vim.api.nvim_set_keymap('n', '<Space>bd', ':BufferOrderByDirectory<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<Space>bl', ':BufferOrderByLanguage<CR>',  default_opts)
vim.api.nvim_set_keymap('n', '<A-.>',     ':BufferPrevious<CR>',         default_opts)
vim.api.nvim_set_keymap('n', '<A-;>',     ':BufferNext<CR>',             default_opts)
vim.api.nvim_set_keymap('n', '<A-<>',     ':BufferMovePrevious<CR>',     default_opts)
vim.api.nvim_set_keymap('n', '<A->>',     ':BufferMoveNext<CR>',         default_opts)
vim.api.nvim_set_keymap('n', '<A-1>',     ':BufferGoto 1<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-2>',     ':BufferGoto 2<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-3>',     ':BufferGoto 3<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-4>',     ':BufferGoto 4<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-5>',     ':BufferGoto 5<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-6>',     ':BufferGoto 6<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-7>',     ':BufferGoto 7<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-8>',     ':BufferGoto 8<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-9>',     ':BufferLast<CR>',             default_opts)
vim.api.nvim_set_keymap('n', '<A-c>',     ':BufferClose<CR>',            default_opts)
