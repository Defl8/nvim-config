return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "BufReadPre", "BufNewFile" }, -- load when a buffer is opened or created
    config = function()
      local config = require("treesitter-context")
      config.setup({
      })
    end
  }
}
