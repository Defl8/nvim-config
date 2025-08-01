require "oil".setup({
	use_default_keymaps = false,
	view_options = {
		show_hidden = true,
	},
	keymaps = {
		["<CR>"] = "actions.select"
	},
})
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent dir" })
