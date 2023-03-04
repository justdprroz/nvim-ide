require("lualine").setup {
    options = {
        icons_enabled = true,
        component_separators = { left = "", right = ""},
        section_separators = { left = "", right = ""},
        always_divide_middle = true,
        globalstatus = true, 
        ignore_focus = {
            "packer",
            "NvimTree",
        },
         refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
         }
     },
     sections = {
        lualine_a = {"mode"},
        lualine_b = {"hostname", "branch", "diff"},
        lualine_c = {"filename"},
        lualine_x = {"encoding", "filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
     },
     inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {"location"},
        lualine_y = {},
        lualine_z = {}
     },
}

