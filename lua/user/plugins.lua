return require("packer").startup(function(use)
    -- Plugin manager
    use "wbthomason/packer.nvim"

    -- More plugin management
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- File explorer
    use {
          "nvim-tree/nvim-tree.lua",
          requires = {
                "nvim-tree/nvim-web-devicons", -- optional, for file icons
          },
          tag = "nightly" -- optional, updated every week. (see issue #1193)
    }

    -- Startup explorer
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
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
    use "moll/vim-bbye"

    -- Syntax highlight
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    -- Indent highlight
    use "lukas-reineke/indent-blankline.nvim"

    -- Autocompletions
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'

    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- Snippets
    use { 'L3MON4D3/LuaSnip' }

    -- use "neovim/nvim-lspconfig"
    --
    -- use "hrsh7th/nvim-cmp"    
    -- use "hrsh7th/cmp-nvim-lsp"
    -- use "hrsh7th/vim-vsnip"
    -- use "rafamadriz/friendly-snippets"
    -- use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})

    -- Git highlights
    use "lewis6991/gitsigns.nvim"

    -- Rusty Stuff
    use 'simrat39/rust-tools.nvim'

    -- Sudo Write
    use "lambdalisue/suda.vim"

    -- Markdown
    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)
