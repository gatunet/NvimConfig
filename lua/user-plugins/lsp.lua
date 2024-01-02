local mason_lspconfig = require("mason-lspconfig")
local mason = require("mason")
local lspconfig = require("lspconfig")

local lsp_lines = require("lsp_lines").setup()

vim.cmd([[
let g:coq_settings = { 'auto_start': 'shut-up', 'keymap.jump_to_mark': '' }
]])

local coq = require("coq")

-- coq.auto_start = "shut-up"
-- vim.g.coq_settings = {
--     auto_start = "shut-up"
-- }

mason.setup({})

mason_lspconfig.setup({
    ensure_installed = { "lua_ls" }
})


-- Languagues setup

-- Lua
lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities({}))

-- Python
lspconfig.pylsp.setup(coq.lsp_ensure_capabilities({}))

-- Docker
lspconfig.dockerls.setup(coq.lsp_ensure_capabilities({}))



-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)

        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'ds', vim.lsp.buf.signature_help, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        -- vim.keymap.set('n', '<leader>li', vim.diagnostics.open_float(), opts)
    end,
})
