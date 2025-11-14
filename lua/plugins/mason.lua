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
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre" },
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

			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
			vim.keymap.set("n", "<leader>lf", function()
				require("conform").format()
			end)
			vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
		end,
	},
}
