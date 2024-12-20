return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require("lualine").setup({
                options = {
                    theme = vim.api.nvim_exec("echo g:colors_name", true):gsub("\n", ""),
                },
            })
        end,
    }
}
