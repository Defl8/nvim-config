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
                ensure_installed = {
                    "basedpyright",
                    "lua_ls",
                    "marksman",
                    "svelte",
                    "rust_analyzer",
                    "biome",
                    "bashls",
                    "html",
                    "emmet_ls",
                    "ts_ls",
                    "cssls",
                    "hyprls",
                    "clangd",
                    "intelephense",
                },
            })
        end,
        event = "VeryLazy", -- Loads after critical plugins
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" }, -- Load when new buffer is created or opened
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
            })
            lspconfig.marksman.setup({
                capabilities = capabilities,
            })
            lspconfig.basedpyright.setup({
                capabilities = capabilities,
            })
            lspconfig.svelte.setup({
                capabilities = capabilities,
            })
            lspconfig.biome.setup({
                capabilities = capabilities,
            })
            lspconfig.bashls.setup({
                capabilities = capabilities,
            })
            lspconfig.html.setup({
                filetypes = { "html" },
                capabilities = capabilities,
            })
            lspconfig.emmet_ls.setup({
                filetypes = { "html" },
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })
            lspconfig.hyprls.setup({
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = { "clangd", "--fallback-style=Google" }
            })
            lspconfig.intelephense.setup({
                capabilities = capabilities,
            })
            lspconfig.csharp_ls.setup({
                capabilities = capabilities,
            })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
