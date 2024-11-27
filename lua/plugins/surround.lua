return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Keymaps
            keymaps = {
                normal = "<leader>s",
                normal_line = "<leader>ss",
                visual = "<leader>S",
                delete = "<leader>ds",
                change = "<leader>cs"
            }
        })
    end
}
