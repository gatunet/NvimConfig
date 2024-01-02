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
keymap('n', '<leader>q', '<cmd>q!<CR>')
keymap('n', '<leader>v', '<cmd>vsplit<CR>')
keymap('n', '<leader>s', '<cmd>split<CR>')
keymap('n', '<leader>h', '<cmd>noh<CR>')
keymap('n', '<leader>r', '<cmd>source $HOME/.config/nvim/init.lua<CR>')
keymap('n', '<leader>t', '<cmd>term<CR>')
keymap('n', '<leader>mi', '<cmd>Mason<CR>')

-- Fuzzy finding
keymap('n', '<leader>f', "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<CR>")
keymap('n', '<leader>F', "<cmd>Telescope live_grep theme=ivy<CR>")

-- Git
keymap('n', '<leader>gd', "<cmd>DiffviewFileHistory %<CR>")
keymap('n', '<leader>gc', "<cmd>DiffviewClose<CR>")
keymap('n', '<leader>gl', "<cmd>LazyGit<CR>")
keymap('n', '<leader>gs', "<cmd>Telescope git_status<CR>")
