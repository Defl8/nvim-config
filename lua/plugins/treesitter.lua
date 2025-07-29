require "nvim-treesitter.configs".setup({
	ensure_installed = { "lua", "vim", "markdown", "go", "bash" },
	auto_install = true,
	indent = { enable = true },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
})
