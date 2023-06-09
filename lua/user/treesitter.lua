local trstr_status_ok, trstr = pcall(require, "nvim-treesitter.configs")
if not trstr_status_ok then
    return
end

local trstr_ctx_status_ok, trstr_ctx = pcall(require, "treesitter-context")
if not trstr_ctx_status_ok then
    return
end

trstr.setup({
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "css" }, -- list of language that will be disabled
    },
    autopairs = {
        enable = true,
    },
    indent = {
        enable = true,
        disable = { "python", "css" }
    }
})

trstr_ctx.setup{}
