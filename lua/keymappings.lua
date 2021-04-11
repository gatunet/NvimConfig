local opts = { noremap = true, silent = true }

-- Smother movement
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>wincmd h<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>wincmd j<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>wincmd k<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>wincmd l<CR>', opts)

-- Handling files
vim.api.nvim_set_keymap('n', 'W', '<cmd>w<CR>', { noremap = true }) -- smart save
vim.api.nvim_set_keymap('n', 'Q', '<cmd>wq<CR>', { noremap = true }) -- smart quit
vim.api.nvim_set_keymap('n', '<Leader>sv', '<cmd>luafile %<CR>', { noremap = true })

-- Smart split
vim.api.nvim_set_keymap('n', '<Leader>h', '<cmd>split<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>v', '<cmd>vsplit<CR>', opts)

-- <Tab> to navigate the completion menu
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', { noremap = true, expr = true })
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { noremap = true, expr = true })

-- LSP management
vim.api.nvim_set_keymap('n', '<Leader>ljr', "<cmd>lua require('lspconfig').tsserver.autostart()<CR>", opts)

-- NVim Terminal
-- Ctrl + \ + Ctrl n -- to exit insert mode
vim.api.nvim_set_keymap('n', '<Leader>t', '<cmd>terminal<CR>', { noremap = true })

