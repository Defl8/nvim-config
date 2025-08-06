return {
	'stevearc/oil.nvim',
	opts = {},
	dependencies = {"nvim-tree/nvim-web-devicons"},
	lazy = false,
	config = function()
		require "oil".setup({
			keymaps = {
				["<CR>"] = "actions.select",
			},
			use_default_keymaps = false,
			view_options = {
				show_hidden = true
			}
		})
		vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open Oil at current location."})
	end,
}
