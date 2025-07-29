require "blink.cmp".setup({
	fuzzy = { implementation = "lua" },
	snippets = { preset = "default" },
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
})
