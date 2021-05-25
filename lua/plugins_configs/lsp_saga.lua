local saga = require('lspsaga')

saga.init_lsp_saga{
    border_style = "single",
    rename_action_keys = {
        quit = '<ESC>',
        exec = '<CR>'
    },
    code_action_keys = {
        quit = '<ESC>',
        exec = '<CR>'
    },
    code_action_icon = ' ',
    code_action_prompt = {
        enable = true,
        sign = false,
        sign_priority = 20,
        virtual_text = false,
    },
}
