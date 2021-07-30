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

-- Barbar
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

-- vim.cmd([[
-- " Use <Tab> and <S-Tab> to navigate through popup menu
-- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
-- 
-- imap <tab> <Plug>(completion_smart_tab)
-- imap <s-tab> <Plug>(completion_smart_s_tab)
-- 
-- ]])
-- 
