return {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
        require("rose-pine").setup({
            variant = "moon",
            disable_italics = true
        })
        vim.cmd.colorscheme("rose-pine")
    end
}
