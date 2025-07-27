local keymap = vim.keymap.set
local cmd = vim.cmd

vim.g.mapleader = " " -- Set the leader for keymaps

keymap("n", "<C-d>", "<C-d>zz") -- Center cursor on page down
keymap("n", "<C-u>", "<C-u>zz") -- Center cursor on page up
keymap("n", "n", "nzzzv") -- Next searched word center cursor
keymap("n", "N", "Nzzzv") -- Previous searched word center cusor
keymap("n", "<leader>c", "_<C-v>") -- First char in line then visual block
keymap({"n", "v"}, "<leader>y", [["+y]]) -- Copy to sys clipboard
keymap({"n", "v"}, "<leader>d", [["+d]]) -- Delete to sys clipboard
keymap({"n", "v"}, "<leader>p", [["+p]]) -- Paste from sys clipboard
keymap({"n", "v"}, "<leader>P", [["+P]]) -- Paste from sys clipboard
keymap("n", "gV", "`[v`]")

-- Remove highlight from file
keymap("n", "<leader>rh", function()
	cmd("noh")
end)

-- Source current buffer
keymap("n", "<leader>s", function()
	cmd("so")
end)

cmd([[command! W w]]) -- Remap capital W to lowercase w
cmd([[command! Q q]]) -- Remap capital Q to lowercase q
cmd([[command! Wq wq]]) -- Remap capital Wq to lowercase wq
