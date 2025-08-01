require "mason".setup()

-- Servers
local lspconfig = require "lspconfig"
local servers = { "lua_ls", "gopls", "bashls", "pyright", "templ", "html", "htmx", "emmet_ls", "marksman" }
-- Server configs
-- HTML
lspconfig.html.setup({
	filetypes = { "html" }
})

lspconfig.htmx.setup({
	filetypes = { "html" }
})

lspconfig.marksman.setup({
	filetypes = { "markdown" }
})



vim.lsp.enable(servers)

-- Keymaps for lsp
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format the current buffer" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Check inline error" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Execute code action" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Get all references" })

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.*" },
	callback = function()
		vim.lsp.buf.format({ async = false })
	end
})
