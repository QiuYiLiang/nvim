require("bufferline").setup({})

vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*",
	callback = function()
		vim.cmd([[set showtabline=0]])
	end,
})
