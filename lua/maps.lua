-- Shorten function name
local map = vim.keymap.set
local cmd = vim.cmd
local create_command = vim.api.nvim_create_user_command

-- Set space as leader
vim.g.mapleader = " "

-- Page up and down center cursor
map("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Next searched word center cursor
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Paste from system clipboard register
map("x", "<leader>p", [["_dP]])

-- Yank to system clipboard register
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

-- Delete to system clipboard register
map({ "n", "v" }, "<leader>d", '"_d')

-- First char of line and visual block for code comments
map("n", "<leader>c", "_<C-q>")

-- Remove highlight
map("n", "<leader>rh", function()
	cmd("noh")
end)

-- :W remap to :w
create_command("W", "w", {})
-- :Wq remap to :wq
create_command("Wq", "wq", {})
-- :Q remap to :q
create_command("Q", "q", {})

-- Shoutout
map("n", "<leader><leader>", function()
	cmd("so")
end)

-- LSP MAPS
-- Rename references
<<<<<<< Updated upstream
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "<leader>er", "<cmd>lua vim.diagnostic.open_float()<CR>")
=======
map('n', '<leader>rn', vim.lsp.buf.rename)
map('n', '<leader>er', vim.diagnostic.open_float)
>>>>>>> Stashed changes
