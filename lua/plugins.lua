return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
  		'nvim-tree/nvim-tree.lua',
  		requires = {
    			'nvim-tree/nvim-web-devicons', -- optional, for file icons
  		},
  		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use {"akinsho/toggleterm.nvim", tag = '*'}
    use "lunarvim/darkplus.nvim"
	use 'folke/tokyonight.nvim'
end)
