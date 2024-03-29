if not pcall(require, "plugins.packer") then
	return false
end

if not pcall(require, "Comment") then
	return false
end

require("plugins.toggleterm")
require("plugins.dap")
require("plugins.formatter")
require("plugins.nvim-treesitter")
require("plugins.nvim-cmp")
require("plugins.nvim-tree")
require("plugins.lspconfig")
require("plugins.barbar")
require("plugins.nvim-cursorline")
require("plugins.diffview")
require("nvim-treesitter.install").update({})
require("nvim-ts-autotag").setup({})
require("nvim-autopairs").setup({})
require("aerial").setup({})
require("Comment").setup({})
require("telescope").load_extension("live_grep_args")
-- clipboard
vim.cmd([[set clipboard+=unnamedplus]])

-- theme
require("onedarkpro").setup({
	colors = {
		bg = "#ffffff",
		line_number = "#ffffff",
	},
})
vim.cmd("colorscheme onelight")
vim.cmd("set laststatus=0")

-- git-blame.nvim
vim.g.gitblame_enabled = 0

vim.opt.scrolloff = 5
