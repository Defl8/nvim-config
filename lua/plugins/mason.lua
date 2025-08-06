return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "basedpyright", "gopls" },
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre" },
		config = function()
			local servers = require "mason-registry".get_installed_packages()
			local map_names = require "mason-lspconfig".get_mappings().package_to_lspconfig
			local lspconfig = require "lspconfig"

			for _, server in ipairs(servers) do
				local capabilities = require "blink.cmp".get_lsp_capabilities()
				local lsp_name = map_names[server.name]
				lspconfig[lsp_name].setup({
					capabilties = capabilities
				})
			end

			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
			vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
			vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
		end,
	}
}
