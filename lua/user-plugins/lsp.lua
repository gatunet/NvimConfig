local mason_lspconfig = require("mason-lspconfig")
local mason = require("mason")
local lspconfig = require("lspconfig")
local illuminate = require("illuminate")
local trouble = require("trouble")


vim.g.coq_settings = {
    auto_start = "shut-up",
    keymap = {
        bigger_preview = "",
        jump_to_mark = ""
    }
}

local coq = require("coq")

illuminate.configure({})
mason.setup({})


vim.diagnostic.config({
  virtual_text = false,
})

mason_lspconfig.setup({
    ensure_installed = { "lua_ls", "pylsp" }
})

trouble.setup({
    -- auto_open = true,
    modes = {
    diagnostics_buffer = {
      mode = "diagnostics", -- inherit from diagnostics mode
      filter = { buf = 0 }, -- filter diagnostics to the current buffer
    },
  }
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
lspconfig.rust_analyzer.setup(coq.lsp_ensure_capabilities({}))


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
