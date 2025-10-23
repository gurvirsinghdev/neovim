return {
  {
    "j-hui/fidget.nvim",
    opts = {}
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({})
    end
  }
}
