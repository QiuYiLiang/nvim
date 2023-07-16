local function on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function map(key, action)
		vim.keymap.set("n", key, action, { buffer = bufnr, noremap = true, silent = true, nowait = true })
	end

	map("o", api.node.open.edit)
	map("I", api.node.navigate.sibling.first)
	map("E", api.node.navigate.sibling.last)
	map("R", api.tree.reload)
	map("r", api.fs.rename)
	map("d", api.fs.remove)
	map("a", api.fs.create)
	map("c", api.fs.copy.node)
	map("f", api.live_filter.start)
	map("y", api.tree.toggle_gitignore_filter)
	map("x", api.fs.cut)
	map("p", api.fs.paste)
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
