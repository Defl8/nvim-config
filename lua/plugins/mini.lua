vim.pack.add({
    "https://github.com/nvim-mini/mini.nvim"
})

local keymap = vim.keymap.set

-- ICONS
require("mini.icons").setup()
MiniIcons.mock_nvim_web_devicons()


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
