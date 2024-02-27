return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
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

      lspconfig.html.setup{
        capabilities = capabilities
      }
      lspconfig.lua_ls.setup{
        capabilities = capabilities
      }
      lspconfig.pyright.setup{
        capabilities = capabilities
      }
      lspconfig.marksman.setup{
        capabilities = capabilities
      }
      lspconfig.cssls.setup{
        capabilities = capabilities
      }
      lspconfig.tsserver.setup{
        capabilities = capabilities
      }

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
