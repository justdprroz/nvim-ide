require("bufferline").setup{
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true
            }
        },
        indicator = {
            icon = "▎",
            style = "icon",
        },
        close_command = "Bdelete! %d",
    }
}

