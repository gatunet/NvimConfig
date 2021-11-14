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
vim.api.nvim_set_keymap('n', '<A-,>',     '<cmd>BufferPrevious<CR>',         default_opts)
vim.api.nvim_set_keymap('n', '<A-.>',     '<cmd>BufferNext<CR>',             default_opts)
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

-- Harpoon
vim.api.nvim_set_keymap('n', 'm-1', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>', default_opts)
vim.api.nvim_set_keymap('n', 'm-2', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>', default_opts)
vim.api.nvim_set_keymap('n', 'm-3', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>', default_opts)
vim.api.nvim_set_keymap('n', 'm-4', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>', default_opts)
vim.api.nvim_set_keymap('n', 'm-5', '<cmd>lua require("harpoon.ui").nav_file(5)<CR>', default_opts)

vim.api.nvim_set_keymap('n', '<A-o>',     '<cmd>termopen()<CR>',            default_opts)

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  else
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
