return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>a",
			function()
				require("harpoon"):list():add()
			end,
			desc = "Add file to harpoon",
		},
		{
			"<leader>h",
			function()
				require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
			end,
			desc = "Toggle harpoon menu",
		},
		{
			"<C-h>",
			function()
				require("harpoon"):list():select(1)
			end,
			desc = "Harpoon file 1",
		},
		{
			"<C-j>",
			function()
				require("harpoon"):list():select(2)
			end,
			desc = "Harpoon file 2",
		},
		{
			"<C-k>",
			function()
				require("harpoon"):list():select(3)
			end,
			desc = "Harpoon file 3",
		},
		{
			"<C-l>",
			function()
				require("harpoon"):list():select(4)
			end,
			desc = "Harpoon file 4",
		},
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({
			settings = {
				save_on_toggle = true,
				sync_on_ui = true,
			},
		})
	end,
}
