local nvim_lsp = require('lspconfig')

local function documentHighlight(client, bufnr)
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec(
            [[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceText cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=#464646
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]],
            false
        )
    end
end

local custom_on_attach = function(client, bufnr)
    documentHighlight(client, bufnr)
end

local servers = { "pyls_ms", "sumneko_lua" }

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = custom_on_attach }
end
