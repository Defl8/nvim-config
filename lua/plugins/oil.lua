require "oil".setup({
	use_default_keymaps = true,
	view_options = {
		show_hidden = true,
	},
})
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent dir" })
