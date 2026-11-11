vim.pack.add({
    "https://github.com/saghen/blink.lib",
    "https://github.com/saghen/blink.cmp",
    "https://github.com/L3MON4D3/LuaSnip",
    "https://github.com/rafamadriz/friendly-snippets",
    }
)

-- Completion setup
local cmp = require("blink.cmp")
cmp.build():pwait()
cmp.setup()

require("luasnip").setup()

require("luasnip.loaders.from_vscode").lazy_load()
