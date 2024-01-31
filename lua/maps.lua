-- Shorten function name
local map = vim.api.nvim_set_keymap

-- Set space as leader
vim.g.mapleader = ' '

-- Remap visual block to CTRL + q
map('n', '<c-q>', '<c-v>', {noremap = true, silent = true})

-- Page up and down center cursor
map('n', '<C-d>', '<C-d>zz', {noremap = true, silent = true})
map('n', '<C-u>', '<C-u>zz', {noremap = true, silent = true})
