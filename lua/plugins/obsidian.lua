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
                {
                    name = "Semester 2",
                    path = "C:/Users/wyatt/Documents/github/CNT-Obsidian-Notes/Semester 2",
                    templates = {
                        subdir = "Templates"
                    }
                },
            }
        })
    end,
}
