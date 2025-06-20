-- Add new servers here and they will be auto initialized
local servers = {
    "basedpyright",
    "lua_ls",
    "marksman",
    "rust_analyzer",
    "biome",
    "bashls",
    "html",
    "emmet_ls",
    "ts_ls",
    "cssls",
    "hyprls",
    "clangd",
    "gopls",
    "htmx",
}
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                automatic_enable = false,
                ensure_installed = servers
            })
            --require("mason-lspconfig").setup_handlers({})
        end,
        event = "VeryLazy", -- Loads after critical plugins
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufRead" }, -- Load when new buffer is created or opened
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            local lspconfig = require("lspconfig")

            -- Walk over servers and initialize
            for _, lsp in ipairs(servers) do
                lspconfig[lsp].setup({
                    capabilities = capabilities
                })
            end

            -- Lsp Maps
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
