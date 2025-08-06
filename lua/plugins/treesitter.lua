return {
	'nvim-treesitter/nvim-treesitter',
	event = { "BufReadPre" },
	lazy = false,
	branch = 'main',
	build = ':TSUpdate',
	config = function()
		require "nvim-treesitter".setup({
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
