local cmp = require("cmp")

cmp.setup({
    sources = cmp.config.sources({
        { name='nvim_lsp' },
        { name='buffer' },
        { name='path' },
        { name='cmdline' },
        { name='luasnip' },
    }),
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})
