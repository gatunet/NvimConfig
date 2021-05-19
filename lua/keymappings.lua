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
vim.api.nvim_set_keymap("n", "<leader>/", ":CommentToggle<CR>", default_opts)
vim.api.nvim_set_keymap("v", "<leader>/", ":CommentToggle<CR>", default_opts)

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>f',     '<cmd>Telescope find_files<CR>',  default_opts)
vim.api.nvim_set_keymap('n', '<Leader>g',     '<cmd>Telescope live_grep<CR>',  default_opts)

-- Vimspector
vim.api.nvim_set_keymap('n', '<Leader>de', '<cmd>VimspectorBalloonEval<CR>', default_opts)
vim.api.nvim_set_keymap('n', '<Leader>dr', '<cmd>VimspectorReset<CR>', default_opts)

-- LspSaga
vim.api.nvim_set_keymap('n', '<Leader>gh', "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", default_opts) -- Finder
vim.api.nvim_set_keymap('n', '<Leader>ca', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", default_opts) -- Code Action
vim.api.nvim_set_keymap('v', '<Leader>ca', ":<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>", default_opts) -- Range Code Action
vim.api.nvim_set_keymap('n', '<Leader>K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", default_opts) -- Hover Docs
vim.api.nvim_set_keymap('n', '<Leader>j', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", default_opts) -- Scroll trough the docs
vim.api.nvim_set_keymap('n', '<Leader>k', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", default_opts) -- Scroll trough the docs
vim.api.nvim_set_keymap('n', '<Leader>gs', "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", default_opts) -- Signature Help
vim.api.nvim_set_keymap('n', '<Leader>gr', "<cmd>lua require('lspsaga.rename').rename()<CR>", default_opts) -- Rename
vim.api.nvim_set_keymap('n', '<Leader>gd', "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", default_opts) -- Preview Definition
vim.api.nvim_set_keymap('n', '<Leader>cd', "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>", default_opts) -- Show diagnostics
vim.api.nvim_set_keymap('n', '<Leader>cc', "<cmd>lua require'lspsaga.diagnostic'.show_cursor_diagnostics()<CR>", default_opts) -- Show diagnostics if the cursor is over the area
vim.api.nvim_set_keymap('n', '[e', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>", default_opts) -- Jump diagnostic (prev)
vim.api.nvim_set_keymap('n', ']e', "<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>", default_opts) -- Jump diagnostic (next)
vim.api.nvim_set_keymap('n', '<A-t>', "<cmd>lua require('lspsaga.floaterm').open_float_terminal()<CR> -- or open_float_terminal('lazygit')<CR>", default_opts) -- Open float term
vim.api.nvim_set_keymap('t', '<A-t>', "<C-\\><C-n>:lua require('lspsaga.floaterm').close_float_terminal()<CR>", default_opts) -- Close float term

-- Compe

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end
-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap('i', '<Tab>', "v:lua.tab_complete()", { expr = true })
vim.api.nvim_set_keymap('s', '<Tab>', "v:lua.tab_complete()", { expr = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', "v:lua.s_tab_complete()", { expr = true })
vim.api.nvim_set_keymap('s', '<S-Tab>', "v:lua.s_tab_complete()", { expr = true })
vim.api.nvim_set_keymap('i', '<CR>', "compe#confirm('<CR>')", { expr = true, silent = true })


