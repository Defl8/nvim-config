-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
-- Packer can manage itself
use 'wbthomason/packer.nvim'

use 'rebelot/kanagawa.nvim'

use {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
}

use {
	'nvim-neo-tree/neo-tree.nvim',
	branch = 'v3.x',
	requires = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
		'MunifTanjim/nui.nvim',
		-- '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
	}
}


use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use ('nvim-treesitter/playground')

use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	requires = {
		--- Uncomment these if you want to manage LSP servers from neovim
		-- {'williamboman/mason.nvim'},
		-- {'williamboman/mason-lspconfig.nvim'},

		-- LSP Support
		{'neovim/nvim-lspconfig'},
		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'L3MON4D3/LuaSnip'},
	}
}

use {
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',
}
use 'mfussenegger/nvim-lint'

use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons

use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status

use 'romgrk/barbar.nvim'

use 'tpope/vim-fugitive'

-- Themes
use { 'catppuccin/nvim', as = 'catppuccin' }
use { 'bluz71/vim-nightfly-colors', as = 'nightfly' }
-- end Themes

use {
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn['mkdp#util#install']() end,
}

use 'karb94/neoscroll.nvim'

use 'ggandor/leap.nvim'
end)

