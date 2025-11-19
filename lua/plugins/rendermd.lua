return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependecies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
	ft = "markdown",
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
	config = function()
		require("render-markdown").setup({
			completions = { lsp = { enabled = true }, blink = { enabled = true } },
		})
	end,
}
