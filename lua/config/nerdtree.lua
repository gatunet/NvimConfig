local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<Leader>n', '<cmd>NERDTreeToggle<CR>', opts)

vim.g.NERDTreeWinSize = 45
vim.g.NERDTreeWinPos = "right"

