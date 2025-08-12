return {
	'nvim-telescope/telescope.nvim',
	lazy = false,
	dependencies = {'nvim-lua/plenary.nvim'},
	config = function()
		require "telescope".setup({
			pickers = {
				find_files = { hidden = true },
				git_files = { hidden = true },
				live_grep = { hidden = true },
			},
		})
		local builtin = require "telescope.builtin"
		vim.keymap.set("n", "<leader>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>rg", builtin.live_grep)
		vim.keymap.set("n", "<leader>fg", builtin.git_files)
		vim.keymap.set("n", "<leader>cf", function()
			builtin.colorscheme({
				enable_preview = true,
				attach_mappings = function (_, map)
					map({"i", "n"}, "<CR>", function(prompt_bufnr)
						local selection = require("telescope.actions.state").get_selected_entry()
						require("telescope.actions").close(prompt_bufnr)
						if selection then
							vim.cmd.colorscheme(selection.value)
						end
					end)
					return true
				end
			})
		end)
		vim.keymap.set("n", "<leader>fh", builtin.help_tags)
	end,
}
