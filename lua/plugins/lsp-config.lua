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
            require("mason-lspconfig").setup {
                ensure_installed = { "basedpyright", "lua_ls", "clangd", "marksman", "ts_ls", "html", "cssls", "powershell_es", "svelte" }
            }
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
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")

            lspconfig.html.setup {
                capabilities = capabilities
            }
            lspconfig.lua_ls.setup {
                capabilities = capabilities
            }
            lspconfig.marksman.setup {
                capabilities = capabilities
            }
            lspconfig.cssls.setup {
                capabilities = capabilities
            }
            lspconfig.ts_ls.setup {
                capabilities = capabilities
            }
            lspconfig.basedpyright.setup {
                capabilities = capabilities
            }
            lspconfig.clangd.setup {
                capabilities = capabilities
            }
            lspconfig.powershell_es.setup {
                capabilities = capabilities
            }
            lspconfig.svelte.setup {
                capabilities = capabilities
            }
            lspconfig.biome.setup {
                capabilities = capabilities
            }
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
