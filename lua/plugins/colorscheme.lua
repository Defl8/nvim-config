local colorschemes = { "vaporwave", "catppuccin-frappe", "catppuccin-mocha" }
local color = colorschemes[math.random(1, #colorschemes)]

vim.cmd(":colorscheme " .. color)
