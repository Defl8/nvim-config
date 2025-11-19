return {
	"stevearc/oil.nvim",
	lazy = false,
	opts = {},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>e", "<CMD>Oil<CR>", desc = "Open Oil at current location" },
	},
	config = function()
		require("oil").setup({
			keymaps = {
				["<CR>"] = "actions.select",
			},
			use_default_keymaps = false,
			view_options = {
				show_hidden = true,
			},
		})
	end,
}
