require "mason".setup()

local servers = { "lua_ls", "basedpyright", "gopls" }
vim.lsp.enable(servers)

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format the current buffer" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Check inline error" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Execute code action" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Get all references" })
