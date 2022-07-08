require 'plugins.packer'
require 'plugins.toggleterm'
require 'plugins.aerial'
require 'plugins.dap'
require 'plugins.formatter'
require 'plugins.nvim-treesitter'
require 'plugins.nvim-cmp'
require 'plugins.nvim-tree'
require 'plugins.lspconfig'
require 'plugins.auto-seesion'
require 'plugins.barbar'
require 'plugins.nvim-cursorline'
require 'galaxyline.themes.eviline'
require 'nvim-treesitter.install'.update {}
require 'nvim-ts-autotag'.setup {}
require 'nvim-autopairs'.setup {}
require 'Comment'.setup {}
vim.cmd[[colorscheme dracula]]
