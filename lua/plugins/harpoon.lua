vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/ThePrimeagen/harpoon", version = "harpoon2" },
})

local harpoon = require("harpoon")
local keymap = vim.keymap.set


harpoon:setup({
    settings = {
        save_on_toggle = true,
        sync_on_ui = true,
    },
})

keymap("n", "<leader>a", function() harpoon:list():add() end)
keymap("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

local swap_inputs = {"<C-h>", "<C-j>", "<C-k>", "<C-l>"}
for index, input in ipairs(swap_inputs) do 
    keymap("n", input, function() harpoon:list():select(index) end)
end
