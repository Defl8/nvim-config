return {
	{
		"stevearc/conform.nvim",
		dependencies = { "mason.nvim" },
		keys = {
			"<leader>fl",
			function()
				require("conform").format()
			end,
			mode = "n",
			desc = "Format file",
		},
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					python = { "black" },
					rust = { "rustfmt" },
					lua = { "stylua", lsp_format = "fallback" },
					go = { "gofmt", lsp_format = "fallback" },
					csharp = { "csharpier" },
				},
			})
		end,
	},
}
