return {
	{
		"j-hui/fidget.nvim",
		opts = {},
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({})
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		---@module "ibl",
		---@type ibl.config
		opts = {},
		config = function()
			require("ibl").setup()
		end,
	},
}
