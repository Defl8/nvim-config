return {
	"neovim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { 'neovim-treesitter/treesitter-parser-registry' },
	lazy = false,
	build = ":TSUpdate",

	config = function ()
		require("nvim-treesitter").install({
			"go",
			"python",
		})
	end,
}
