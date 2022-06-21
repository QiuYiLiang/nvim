require 'plugins.lsp'
require 'plugins.nvim-tree'
require 'plugins.nvim-cmp'
require 'plugins.nvim-treesitter'
require 'plugins.formatter'

require 'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use 'mhartington/formatter.nvim'
  use 'f-person/git-blame.nvim'
  use 'gpanders/editorconfig.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
  }
  use {
    'NTBBloodbath/galaxyline.nvim',
    config = function()
      require('galaxyline.themes.eviline')
    end,
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require'Comment'.setup{}
    end
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require'bufferline'.setup{
        options = {
          close_icon = '',
          buffer_close_icon = '',
          show_buffer_close_icons = false
        }
      }
    end
  }
  use {
    'rmagatti/auto-session',
    config = function()
      require'auto-session'.setup {
        log_level = 'info',
        auto_session_suppress_dirs = '~/src'
      }
    end
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use { 'akinsho/toggleterm.nvim', tag = 'v1.*', config = function()
    require'toggleterm'.setup {
      direction = 'float'
    }
  end }
end)
