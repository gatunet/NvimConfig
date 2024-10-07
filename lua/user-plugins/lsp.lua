local mason_lspconfig = require("mason-lspconfig")
local mason = require("mason")
local lspconfig = require("lspconfig")
local lsp_lines = require("lsp_lines")
local illuminate = require("illuminate")

illuminate.configure({})
mason.setup({})
lsp_lines.setup({})

vim.diagnostic.config({
  virtual_text = false,
})

mason_lspconfig.setup({
    ensure_installed = { "lua_ls", "pylsp" }
})


-- Languagues setup

-- Lua
lspconfig.lua_ls.setup({})

-- Python
lspconfig.pylsp.setup({})
lspconfig.pyright.setup({})

-- CSS
lspconfig.cssls.setup({})

-- Rust
lspconfig.rust_analyzer.setup({})


-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)

        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'go', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'ds', vim.lsp.buf.signature_help, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end,
})
