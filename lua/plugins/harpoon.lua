local harpoon = require("harpoon")
harpoon:setup()


-- Telescope integration

local config = require "telescope.config".values

local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for i, item in ipairs(harpoon_files.items) do
		local val = i .. ". " .. item.value -- Add number in front of the file
		table.insert(file_paths, val)
	end

	require "telescope.pickers".new({}, {
		prompt_title = "Harpoon",
		finder = require "telescope.finders".new_table({
			results = file_paths,
		}),
		previewer = config.file_previewer({}),
		sorter = config.generic_sorter({}),
	}):find()
end

-- Keymaps
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon add file" })
vim.keymap.set("n", "<leader>h", function() toggle_telescope(harpoon:list()) end, { desc = "Harpoon show window" })

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
