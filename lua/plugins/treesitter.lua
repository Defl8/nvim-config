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

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "go", "python" },
			callback = function ()
				vim.treesitter.start()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end
		})
	end,
}
