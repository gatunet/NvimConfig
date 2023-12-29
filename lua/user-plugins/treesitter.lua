-- Use a protected call so we don't error out on first use
local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

treesitter.setup ({
    ensure_installed = { "python", "lua", "bash" },
    highlight = {
        enable = true,
    }
})
