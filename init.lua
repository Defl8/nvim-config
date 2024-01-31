require('options')
require('plugins')
require('colorscheme')
require('lsp')
require('mason').setup()
require('barbar')
require('maps')
require('neoscroll').setup()
require('leap').create_default_mappings()
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



