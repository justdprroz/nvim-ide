require("plugins")
require("nvim-tree").setup()
require("toggleterm").setup{
	direction = "float"
}

-- VS Code theme
require("tokyonight").setup{
	style = "storm",
	transparent = true
}
vim.cmd[[colorscheme tokyonight]]

-- Tab sizes
local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
