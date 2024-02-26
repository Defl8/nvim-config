return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("obsidian").setup({
            workspaces = {
                {
                    name = "codecademy-lua",
                    path = "C:/Users/wyatt/Documents/github/codecademy-lua",
                },
            }
        })
    end,
}
