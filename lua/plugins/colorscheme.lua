local catppuccin_mocha = {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            background = { dark = "mocha" },
            no_italic = true
        })
        vim.cmd.colorscheme "catppuccin"
    end
}

local rose_pine_moon = {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
        require("rose-pine").setup({
            disable_italics = true
        })
        vim.cmd.colorscheme "rose-pine-moon"
    end
}


--function scheme (repo name)

return {
    --rose_pine_moon
    catppuccin_mocha
}
