require "mason".setup()

vim.lsp.enable({ "lua_ls", "basedpyright" })

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format the current buffer" })
