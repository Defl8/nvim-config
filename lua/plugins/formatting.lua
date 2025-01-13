return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		local conform_formatter = require("conform.formatters")

		conform.setup({
			formatters_by_ft = {
				python = { "black" },
				lua = { "stylua" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		})

		conform_formatter.black = {
			command = "black",
			args = { "--line-length", "80" },
			stdin = true,
		}
	end,
}
