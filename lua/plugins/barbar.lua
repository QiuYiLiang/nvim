require("bufferline").setup({
	closable = false,
	animation = false,
	icon_close_tab = "",
})

vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*",
	callback = function()
		vim.cmd([[set showtabline=0]])
	end,
})
