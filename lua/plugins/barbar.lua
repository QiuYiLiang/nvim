require("bufferline").setup({
	animation = false,
	auto_hide = true,
	icons = {
		button = "",
		inactive = { button = "" },
	},
})

vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*",
	callback = function()
		-- vim.cmd([[set showtabline=0]])
	end,
})
