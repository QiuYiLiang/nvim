require("nvim-tree").setup({
	view = {
		side = "right",
		mappings = {
			list = {
				{
					key = "l",
					action = "edit",
				},
			},
		},
	},
})
