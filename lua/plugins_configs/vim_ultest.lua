-- vim.cmd([[
-- let test#python#pytest#options = "--color=yes"
-- ]])

vim.g.ultest_use_pty = 1

require("ultest").setup({
    builders = {
        ['python#pytest'] = function (cmd)
            -- The command can start with python command directly or an env manager
            local non_modules = {'python', 'pipenv', 'poetry'}
            -- Index of the python module to run the test.
            local module
            if vim.tbl_contains(non_modules, cmd[1]) then
                module = cmd[3]
            else
                module = cmd[1]
            end

            local module_index = 1
            if vim.tbl_contains(non_modules, cmd[1]) then
                module_index = 3
            end
            -- Remaining elements are arguments to the module
            local args = vim.list_slice(cmd, module_index + 1)
            return {
                dap = {
                    type = 'python',
                    request = 'launch',
                    module = module,
                    args = args,
                }
            }
        end
    }
})

