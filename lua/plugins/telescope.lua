return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
        lazy = false
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        lazy = false,
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").load_extension("ui-select")
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
                pickers = {
                    find_files = { hidden = true, },
                    git_files = { hidden = true, },
                    live_grep = { hidden = true, },
                },
            })
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>rg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
        end,
    },
}
