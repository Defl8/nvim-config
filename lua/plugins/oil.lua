vim.pack.add({
    'https://github.com/stevearc/oil.nvim',
})


require("oil").setup({
    default_file_explorer = true,
    view_options = { show_hidden = true },
    use_default_keymaps = false,
    vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>"),
    keymaps = {
        ["<CR>"] = "actions.select",
    },
})
