require('lualine').setup{
    options = {
        theme = 'wombat',
        section_separators = '',
        component_separators = '',
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {{'branch', icon = ''}},
        lualine_c = {{'filename', full_path = true}},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
}
