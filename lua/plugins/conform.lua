return {
	{
		"stevearc/conform.nvim",
		dependencies = { "mason.nvim" },
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					python = { "black" },
					rust = { "rustfmt" },
					lua = { "stylua", lsp_format = "fallback" },
					go = { "gofmt", lsp_format = "fallback" },
				},
			})
		end,
	},
}
