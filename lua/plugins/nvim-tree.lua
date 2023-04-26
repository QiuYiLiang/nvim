local function on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function map(key, action)
		vim.keymap.set("n", key, action, { buffer = bufnr, noremap = true, silent = true, nowait = true })
	end

	map("o", api.node.open.edit)
	map("I", api.node.navigate.sibling.first)
	map("E", api.node.navigate.sibling.last)
	map("R", api.tree.reload)
end

require("nvim-tree").setup({
	on_attach = on_attach,
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
	},
})
