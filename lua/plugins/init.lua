require("plugins.packer")
require("plugins.toggleterm")
require("plugins.aerial")
require("plugins.dap")
require("plugins.formatter")
require("plugins.nvim-treesitter")
require("plugins.nvim-cmp")
require("plugins.nvim-tree")
require("plugins.lspconfig")
require("plugins.auto-seesion")
require("plugins.barbar")
require("plugins.nvim-cursorline")
require("plugins.diffview")
require("nvim-treesitter.install").update({})
require("nvim-ts-autotag").setup({})
require("nvim-autopairs").setup({})
require("Comment").setup({})

-- clipboard

vim.cmd([[set clipboard+=unnamedplus]])

-- theme
vim.cmd([[set background=light]])
vim.cmd([[colorscheme rose-pine]])
vim.cmd([[set laststatus=0]])
local colors = require("galaxyline.themes.colors")["doom-one"]
colors.bg = "#fffaf3"
require("galaxyline.themes.eviline")

-- git-blame.nvim
vim.g.gitblame_enabled = 0

vim.opt.scrolloff = 5
