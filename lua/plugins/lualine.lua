return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"kdheepak/tabline.nvim",
	},
	config = function()
		require("lualine").setup({
			options = {
				theme = "onedark",
				sections = {
					lualine_a = { path = 2, mode = 1 },
					lualine_b = {},
					lualine_c = { require("tabline").tabline_buffers },
					lualine_x = { require("tabline").tabline_tabs },
					lualine_y = {},
					lualine_z = {},
				},
			},
		})
	end,
}
