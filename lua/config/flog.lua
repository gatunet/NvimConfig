local opts = { noremap = true }

vim.api.nvim_set_keymap('n', '<Leader>gh', '<cmd>Flogsplit<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>gv', '<cmd>Flog<CR>', opts)

