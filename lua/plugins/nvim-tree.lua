require("nvim-tree").setup({
	open_on_setup = true,
	view = {
		float = {
			enable = true,
			quit_on_focus_loss = true,
			open_win_config = {
				relative = "cursor",
				border = "none",
				style = "minimal",
			},
		},
		mappings = {
			custom_only = true,
			list = {
				{ key = "o", action = "edit" },
				{ key = "I", action = "first_sibling" },
				{ key = "E", action = "last_sibling" },
				{ key = "R", action = "refresh" },
				{ key = "a", action = "create" },
				{ key = "d", action = "remove" },
				{ key = "r", action = "rename" },
				{ key = "x", action = "cut" },
				{ key = "c", action = "copy" },
				{ key = "p", action = "paste" },
				{ key = "y", action = "copy_name" },
				{ key = "f", action = "live_filter" },
				{ key = ".", action = "run_file_command" },
				{ key = "<C-k>", action = "toggle_file_info" },
			},
		},
	},
})
