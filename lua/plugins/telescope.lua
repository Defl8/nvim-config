return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
        lazy = true
    },
    {
        "nvim-telescope/telescope.nvim",
        lazy = true,
        keys = {
            { "<leader>ff", "<CMD>Telescope find_files hidden=true<CR>" },
            { "<leader>fg", "<CMD>Telescope live_grep<CR>" },
        },
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").load_extension("ui-select")
            --require("telescope").load_extension("harpoon") -- Use telescope for harpoon
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
        end,
    },
}
