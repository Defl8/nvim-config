local function catppuccin(flavour)
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


local function kanagawa(theme)
    local kanagawa_config = {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                theme = theme,
                commentStyle = { italic = false },
                keywordStyle = { italic = false },
                background = { dark = theme }
            })
            vim.cmd.colorscheme "kanagawa"
        end
    }
    return kanagawa_config
end

local lualine_config = {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                theme = vim.cmd("colorscheme"),
            },
        })
    end,
}

-- CHANGE THIS ONLY
return {
    --rose_pine("moon"),
    catppuccin("mocha"),
    --kanagawa("wave"),
    lualine_config
}
