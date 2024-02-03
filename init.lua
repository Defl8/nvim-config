require('options')
require('plugins')
require('colorscheme')
require('lualine').setup()
require('lsp')
require('mason').setup()
require('barbar')
require('maps')
require('leap').create_default_mappings()
require('treesitter-context').setup{
    enable = true
}
require('nvim-treesitter.configs').setup{
    highlight = {
        enable = true
    }
}
require('telescope').setup{
  pickers = {

    find_files = {
      theme = 'dropdown',
    },

    live_grep = {
      theme = 'dropdown',
    },

    buffers = {
      theme = 'dropdown',
    },

    help_tags = {
      theme = 'dropdown',

    }
  }
}



