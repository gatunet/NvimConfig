
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
vim.api.nvim_set_keymap('n', '<Leader>e', '<cmd>NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>r', '<cmd>NvimTreeRefresh<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>n', '<cmd>NvimTreeFindFile<CR>', { noremap = true })

-- Barbar
vim.api.nvim_set_keymap('n', '<Space>bd', '<cmd>BufferOrderByDirectory<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<Space>bl', '<cmd>BufferOrderByLanguage<CR>',  default_opts)
vim.api.nvim_set_keymap('n', '<A-.>',     '<cmd>BufferPrevious<CR>',         default_opts)
vim.api.nvim_set_keymap('n', '<A-;>',     '<cmd>BufferNext<CR>',             default_opts)
vim.api.nvim_set_keymap('n', '<A-<>',     '<cmd>BufferMovePrevious<CR>',     default_opts)
vim.api.nvim_set_keymap('n', '<A->>',     '<cmd>BufferMoveNext<CR>',         default_opts)
vim.api.nvim_set_keymap('n', '<A-1>',     '<cmd>BufferGoto 1<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-2>',     '<cmd>BufferGoto 2<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-3>',     '<cmd>BufferGoto 3<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-4>',     '<cmd>BufferGoto 4<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-5>',     '<cmd>BufferGoto 5<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-6>',     '<cmd>BufferGoto 6<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-7>',     '<cmd>BufferGoto 7<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-8>',     '<cmd>BufferGoto 8<CR>',           default_opts)
vim.api.nvim_set_keymap('n', '<A-9>',     '<cmd>BufferLast<CR>',             default_opts)
vim.api.nvim_set_keymap('n', '<A-c>',     '<cmd>BufferClose<CR>',            default_opts)

-- Maximazer
vim.api.nvim_set_keymap('n', '<Leader>m',     '<cmd>MaximizerToggle<CR>',    default_opts)

-- Comment
vim.api.nvim_set_keymap('n', '<Leader>/',     '<cmd>CommentToggle<CR>',      default_opts)
vim.api.nvim_set_keymap('v', '<Leader>/',     '<cmd>CommentToggle<CR>',      default_opts)

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>f',     '<cmd>Telescope find_files<CR>',  default_opts)

