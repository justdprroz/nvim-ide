-- Some Magic
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Load Packer and plugins
require("user.plugins")

-- File Explorer
require("user.nvim-tree")

-- Float Terminal
require("user.toggleterm")

-- Theme
require("user.theme")

-- Lualine status bar
require("user.lualine")

-- Tabs
require("user.bufferline")

-- Indentation highlight
require("user.indent_blankline")

-- Syntax highlighting
require("user.nvim-treesitter")

-- Autocompletion
require("user.cmp")

-- Snippets
require("user.luasnip")

-- Git
require("user.gitsigns")

-- General vim configs
require("user.config")

-- MASON
require("user.mason")

-- RUST
require("user.rust-tools")

-- LSP stuff
require("user.lsp")

-- options
require("user.opts")
