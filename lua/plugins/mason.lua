return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "basedpyright", "gopls" },
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {}},
			"neovim/nvim-lspconfig",
		},
		config = function()
			require "mason-lspconfig".setup()
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
			vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
		end
	},
}
