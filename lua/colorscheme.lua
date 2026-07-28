vim.pack.add({"https://github.com/vague-theme/vague.nvim"})

local scheme = "vague"

require(scheme).setup({
    bold = false,
    italic = false,
})

vim.cmd.colorscheme(scheme)
