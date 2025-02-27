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
            vim.cmd.colorscheme("catppuccin")
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
            vim.cmd.colorscheme("rose-pine")
        end
    }
    return rose_pine_config
end

local function night_fox(variant)
    local night_fox_config = {
        "EdenEast/nightfox.nvim",
        name = "nightfox",
        priority = 1000,
        config = function()
            require("nightfox").setup({
                disable_italics = true
            })
            vim.cmd.colorscheme(variant)
        end
    }
    return night_fox_config
end

-- CHANGE THIS ONLY
local colors = { catppuccin("mocha"), rose_pine("moon"), night_fox("carbonfox") }
math.randomseed(os.time())
local rand_index = math.random(#colors)

return {
    colors[rand_index]
}
