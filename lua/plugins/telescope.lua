local builtin = require "telescope.builtin"
require "telescope".setup({
	pickers = {
		find_files = {
			hidden = true
		}
	}
})
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Regular fuzzy find" })
vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Fuzzy find only files in git repo" })
vim.keymap.set("n", "<leader>rg", builtin.live_grep, { desc = "Live grep keyword" })
