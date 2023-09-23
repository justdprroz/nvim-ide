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
require("luasnip.loaders.from_vscode").lazy_load()

-- Git
require("gitsigns").setup()

-- General vim configs
require("user.config")

-- MASON
require("mason").setup()

-- RUST
require("user.rust-tools")

-- LSP stuff
require("user.lsp")

-- options
require("user.opts")
