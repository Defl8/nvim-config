require "mini.pick".setup()

vim.keymap.set("n", "<leader>ff", "<CMD>Pick files<CR>", {desc = "Find files"})
vim.keymap.set("n", "<leader>rg", "<CMD>Pick grep_live<CR>", {desc = "Live grep files"})
vim.keymap.set("n", "<leader>rf", "<CMD>Pick resume<CR>", {desc = "Resume previous pick"})
