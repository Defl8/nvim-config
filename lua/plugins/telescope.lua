return {
	'nvim-telescope/telescope.nvim',
	lazy = false,
	dependencies = {'nvim-lua/plenary.nvim'},
	config = function()
		require "telescope".setup({
			pickers = {
				find_files = { hidden = true },
				git_files = { hidden = true },
				live_grep = { hidden = true },
			},
		})
		local builtin = require "telescope.builtin"
		vim.keymap.set("n", "<leader>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>rg", builtin.live_grep)
		vim.keymap.set("n", "<leader>fg", builtin.git_files)
	end,
}
