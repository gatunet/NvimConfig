-- vim.g.nvim_tree_icons = {
--     default = ' ',
--     symlink = ' ',
--     git = {unstaged = "", staged = "✓", unmerged = "", renamed = "➜", untracked = ""},
--     folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
-- }

require'nvim-tree'.setup {
    auto_close = true,
    hijack_cursor = true,
    view = {
        -- width = 55,
        -- side = "rigth",
        -- auto_resize = true
    }
}
