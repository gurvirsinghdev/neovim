return {
  {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
      require("conform").setup({
        formatter_by_ft = {
          lua             = { "stylua" },
          javascript      = {
            "prettierd", "prettier", stop_after_first = true
          },
          javascriptreact = {
            "prettierd", "prettier", stop_after_first = true
          },
          typescript      = {
            "prettierd", "prettier", stop_after_first = true
          },
          typescriptreact = {
            "prettierd", "prettier", stop_after_first = true
          },
          json            = {
            "prettierd", "prettier", stop_after_first = true
          },
          graphql         = {
            "prettierd", "prettier", stop_after_first = true
          },
        },
        format_on_save = {
          timeout_ms = 500, lsp_format = "fallback" }
      })
    end
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  }
}
