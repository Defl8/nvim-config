vim.pack.add({
    "https://github.com/nvim-mini/mini.nvim"
})

local keymap = vim.keymap.set
local cmd = vim.cmd


-- ICONS
require("mini.icons").setup()


-- PAIRS
require("mini.pairs").setup()


-- PICK
local file_source = "Pick files"
require("mini.pick").setup({
    keymap("n", "<leader>ff", "<CMD>" .. file_source .. "<CR>"),
    keymap("n", "<leader>fg", "<CMD>" .. file_source .. " tool='git'" .. "<CR>"),
    keymap("n", "<leader>rg", "<CMD>Pick grep_live<CR>"),
    keymap("n", "<leader>tt", "<CMD>lua print('test')<CR>"),
})

-- STATUS LINE
require("mini.statusline").setup()
