return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require "rose-pine".setup({
				variant = "moon",
				styles = {
					bold = false,
					italic = false,
				}
			})
			vim.cmd.colorscheme "rose-pine"
		end,
	},
	--{
	--	"catppuccin/nvim",
	--	name = "catppuccin",
	--	config = function()
	--		require "catppuccin".setup({
	--			flavour = "mocha", -- latte, frappe, macchiato, mocha
	--			show_end_of_buffer = true,
	--			no_italic = true,
	--			no_bold = true,
	--			no_underline = true,
	--		})
	--	end,
	--}
}
