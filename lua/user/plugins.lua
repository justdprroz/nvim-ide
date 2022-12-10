return require("packer").startup(function(use)
    -- Plugin manager
    use "wbthomason/packer.nvim"
    -- File explorer
    use {
          "nvim-tree/nvim-tree.lua",
          requires = {
                "nvim-tree/nvim-web-devicons", -- optional, for file icons
          },
          tag = "nightly" -- optional, updated every week. (see issue #1193)
    }
    -- Floating terminal
    use "akinsho/toggleterm.nvim"
    -- VS Code theme
    use "lunarvim/darkplus.nvim"
    -- Tokyo Theme
    use "folke/tokyonight.nvim"
    -- Status bar
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    -- Tabs bar
    use {
        "akinsho/bufferline.nvim",
        tag = "v3.*",
        requires = "nvim-tree/nvim-web-devicons"
    }
    -- Syntax highlight
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    -- Indent highlight
    use "lukas-reineke/indent-blankline.nvim"
    -- Autocompletions
    use "hrsh7th/nvim-cmp"
    use "neovim/nvim-lspconfig"
    use "hrsh7th/cmp-nvim-lsp"
    -- Git highlights
    use "lewis6991/gitsigns.nvim"
    use "Pocco81/auto-save.nvim"
   
end)
