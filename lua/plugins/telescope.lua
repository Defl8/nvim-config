return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Find files",
		},
		{
			"<leader>rg",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Live grep",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").git_files()
			end,
			desc = "Git files",
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Help tags",
		},
		{
			"<leader>cf",
			function()
				require("telescope.builtin").colorscheme({
					enable_preview = true,
					attach_mappings = function(_, map)
						map({ "i", "n" }, "<CR>", function(prompt_bufnr)
							local selection = require("telescope.actions.state").get_selected_entry()
							require("telescope.actions").close(prompt_bufnr)
							if selection then
								vim.cmd.colorscheme(selection.value)
							end
						end)
						return true
					end,
				})
			end,
			desc = "Change colorscheme",
		},
	},
	config = function()
		require("telescope").setup({
			pickers = {
				find_files = { hidden = true },
				git_files = { hidden = true },
				live_grep = { hidden = true },
			},
		})
	end,
}
