return {
  "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate",
  config = function()
    local treesitterconfig = require("nvim-treesitter.configs")
    treesitterconfig.setup({
      ensure_installed = {"lua", "javascript", "php"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
