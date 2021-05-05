
local default_opts = { noremap = true, silent = true}

-- Leader key
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', default_opts)
vim.g.mapleader = ' '

-- Better movement
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>wincmd h<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>wincmd j<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>wincmd k<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>wincmd l<CR>', default_opts)

vim.api.nvim_set_keymap('n', '<Leader>w', '<cmd>w<CR>', { noremap = true }) -- quick save
vim.api.nvim_set_keymap('n', '<Leader>v', '<cmd>vsplit<CR>', { noremap = true }) -- quick vertical split
vim.api.nvim_set_keymap('n', '<Leader>s', '<cmd>split<CR>', { noremap = true }) -- quick horizontal split

vim.api.nvim_set_keymap('n', '<Leader>t', '<cmd>terminal<CR>', { noremap = true }) -- quick terminal

-- Nvim Tree
vim.api.nvim_set_keymap('n', '<Leader>e', '<cmd>NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>r', '<cmd>NvimTreeRefresh<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<Leader>n', '<cmd>NvimTreeFindFile<CR>', { noremap = true })

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
vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", {noremap = true, silent = true})
-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>f',     '<cmd>Telescope find_files<CR>',  default_opts)
vim.api.nvim_set_keymap('n', '<Leader>g',     '<cmd>Telescope live_grep<CR>',  default_opts)

-- Coc
vim.api.nvim_set_keymap('n', '<Leader>d', '<Plug>(coc-definition)<CR>'            , default_opts)
vim.api.nvim_set_keymap('n', '<Leader>r', '<Plug>(coc-rename)<CR>'                , default_opts)
vim.api.nvim_set_keymap('n', '<Leader>c', '<Plug>(coc-codeaction-selected)<CR>'   , default_opts)

-- vim.api.nvim_set_keymap('n', '', '<Plug>(coc-diagnostic-prev)'       , 'previous diagnostic', default_opts)
-- vim.api.nvim_set_keymap('n', '', '<Plug>(coc-diagnostic-next)'       , 'next diagnostic', default_opts)
-- vim.api.nvim_set_keymap('n', '', '<Plug>(coc-type-definition)'       , 'goto type definition', default_opts)
-- vim.api.nvim_set_keymap('n', '', '<Plug>(coc-implementation)'        , 'goto implementation definition', default_opts)
-- vim.api.nvim_set_keymap('n', '', '<Plug>(coc-references)'            , 'goto references definition', default_opts)
-- vim.api.nvim_set_keymap('n', '', ':call <SID>show_documentation()'   , 'show documentation', default_opts)
-- vim.api.nvim_set_keymap('n', '', '<Plug>(coc-format-selected)'       , 'format selected', default_opts)
-- vim.api.nvim_set_keymap('n', '', '<plug>(coc-codeaction)'            , 'code action', default_opts)
-- vim.api.nvim_set_keymap('n', '', '<Plug>(coc-fix-current)'           , 'auto fix problem om current line', default_opts)

-- Vimspector

vim.api.nvim_set_keymap('n', '<Leader>v', '<Plug>VimspectorBalloonEval', default_opts)

