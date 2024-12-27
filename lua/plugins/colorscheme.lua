local function catppuccin(flavour)
    -- flavour options: mocha, frappe
    local catppuccin_config = {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = flavour,
                background = { dark = "mocha" },
                no_italic = true,
                mason = true
            })
            vim.cmd.colorscheme "catppuccin"
        end
    }
    return catppuccin_config
end

local function rose_pine(variant)
    local rose_pine_config = {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                variant = variant,
                disable_italics = true
            })
            vim.cmd.colorscheme "rose-pine"
        end
    }
    return rose_pine_config
end

-- CHANGE THIS ONLY
return {
    --rose_pine("moon"),
    catppuccin("frappe"),
    --kanagawa("wave"),
}
