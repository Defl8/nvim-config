vim.pack.add({
    "https://github.com/nvim-mini/mini.nvim"
})

local keymap = vim.keymap.set

-- ICONS
require("mini.icons").setup()
MiniIcons.mock_nvim_web_devicons()


-- PAIRS
require("mini.pairs").setup()



local mini_pick = require("mini.pick")



mini_pick.setup({
    -- All files
    keymap("n", "<leader>ff", function ()
        mini_pick.builtin.files({ tool = "fallback" })
    end),

    -- Git files
    keymap("n", "<leader>fg", function ()
        mini_pick.builtin.files({ tool = "git" })
    end),

    -- Grep for references
    keymap("n", "<leader>rg", function ()
        mini_pick.builtin.grep_live()
    end),
})

-- STATUS LINE
require("mini.statusline").setup()
