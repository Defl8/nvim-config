local github_prefix = "https://github.com/"
vim.pack.add({
	{ src = github_prefix .. "stevearc/oil.nvim",               name = "oil" },
	{ src = github_prefix .. "neovim/nvim-lspconfig",           name = "lsp" },
	{ src = github_prefix .. "mason-org/mason.nvim",            name = "mason" },
	{ src = github_prefix .. "rose-pine/neovim",                name = "rose-pine" },
	{ src = github_prefix .. "nvim-treesitter/nvim-treesitter", name = "treesitter" },
	{ src = github_prefix .. "nvim-lua/plenary.nvim",           name = "plenary" },
	{ src = github_prefix .. "ThePrimeagen/harpoon",            version = "harpoon2", name = "harpoon" },
	{ src = github_prefix .. "nvim-telescope/telescope.nvim",   name = "telescope" },
	{ src = github_prefix .. "nvim-tree/nvim-web-devicons",     name = "icons" },
})
