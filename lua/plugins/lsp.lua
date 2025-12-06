return {
	{
		"mason-org/mason-lspconfig.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			ensure_installed = { "lua_ls", "basedpyright", "gopls", "templ", "black" },
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			--local servers = require "mason-registry".get_installed_packages()
			-- Get the lsp server names and map them to the Mason name
			-- local map_names = require "mason-lspconfig".get_mappings().package_to_lspconfig

			-- Enable each server
			-- for _, server in ipairs(servers) do
			-- 	local lsp_name = map_names[server.name]
			-- 	vim.lsp.enable(lsp_name)
			-- end

			local capabilities = require("blink.cmp").get_lsp_capabilities()
			vim.lsp.config("*", {
				capabilities = capabilities,
			})
		end,
	},
}
