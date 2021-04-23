-- npm i -g pyright
-- require'lspconfig'.pyright.setup {
--     cmd = {DATA_PATH .. "/lspinstall/python/node_modules/.bin/pyright-langserver", "--stdio"},
--     on_attach = require'lsp'.common_on_attach,
--     handlers = {
--         ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--             virtual_text = O.python.diagnostics.virtual_text,
--             signs = O.python.diagnostics.signs,
--             underline = O.python.diagnostics.underline,
--             update_in_insert = true
--
--         })
--     }
-- }

-- pip install --user 'python-language-server[yapf]'
require'lspconfig'.pyls.setup {
	cmd = {"pyls"},
    on_attach = require'lsp'.common_on_attach,
}

-- pip instal --user jedi-language-server
-- require'lspconfig'.jedi_language_server.setup {
--     on_attach = require'lsp'.common_on_attach
-- }
