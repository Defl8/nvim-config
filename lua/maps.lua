-- Shorten function name
local map = vim.keymap.set
local cmd = vim.cmd

-- Set space as leader
vim.g.mapleader = ' '

-- Page up and down center cursor
map('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true})
map('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true})

-- Next searched word center cursor
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Paste from system clipboard register
map("x", "<leader>p", [["_dP]])

-- Yank to system clipboard register
map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

-- Delete to system clipboard register
map({"n", "v"}, "<leader>d", [["_d]])

-- First char of line and visual block for code comments
map("n", "<leader>q", "_<C-q>")


-- Shoutout
map("n", "<leader><leader>", function()
    cmd("so")
end)
