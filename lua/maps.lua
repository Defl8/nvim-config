-- Shorten function name
local map = vim.keymap.set

-- Set space as leader
vim.g.mapleader = ' '

-- Page up and down center cursor
map('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true})
map('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true})
