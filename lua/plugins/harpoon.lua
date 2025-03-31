return {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        require("harpoon").setup()
        vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu, { desc = "Toggles harpoon quick menu" })
        --vim.keymap.set("n", "<leader>h", ":Telescope harpoon marks <CR>", { desc = "Toggles harpoon quick menu" })
        vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Adds file to harpoon" })


        vim.keymap.set("n", "<leader>m1", function() ui.nav_file(1) end, { desc = "Goes to specific file in harpoon" })
        vim.keymap.set("n", "<leader>m2", function() ui.nav_file(2) end, { desc = "Goes to specific file in harpoon" })
        vim.keymap.set("n", "<leader>m3", function() ui.nav_file(3) end, { desc = "Goes to specific file in harpoon" })
        vim.keymap.set("n", "<leader>m4", function() ui.nav_file(4) end, { desc = "Goes to specific file in harpoon" })


        vim.keymap.set("n", "<leader>mf", ui.nav_next, { desc = "Goes to next file in harpoon" })
        vim.keymap.set("n", "<leader>mb", ui.nav_prev, { desc = "Goes to previous file in harpoon" })
    end,
}
