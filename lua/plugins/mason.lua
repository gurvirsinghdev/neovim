return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			"artemave/workspace-diagnostics.nvim",
		},
		opts = {
			servers = {
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				},
				ts_ls = {
					on_attach = function(client, bufnr)
						require("workspace-diagnostics").populate_workspace_diagnostics(client, 0)

						--Disable LSP formatting
						client.server_capabilities.documentFormattingProvider = false
						client.server_capabilities.documentRangeFormattingProvider = false
					end,
				},
				eslint = {},
				tailwindcss = {},
			},
		},
		config = function(_, opts)
			require("mason").setup()

			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "eslint", "ts_ls" },
			})

			local lspconfig = require("lspconfig")
			for server, config in pairs(opts.servers) do
				vim.lsp.config(server, config)
				vim.lsp.enable(server)
			end
		end,
	},
}
