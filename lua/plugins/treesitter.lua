return {
	"neovim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	branch = "main",
	build = ":TSUpdate",
}
