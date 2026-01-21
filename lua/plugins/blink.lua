return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "v0.*",
	event = "InsertEnter",
	opts = {
		keymap = { preset = "default" },
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "normal",
		},
		signature = { enabled = true },
	},
	config = function()
		require("blink.cmp").setup({
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
				per_filetype = {
					sql = { "dadbod" },
				},
				providers = {
					dadbod = { module = "vim_dadbod_completion.blink" },
				},
			},
		})
	end,
}
