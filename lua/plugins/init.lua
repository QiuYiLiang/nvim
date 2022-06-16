require 'plugins.nvim-tree'
require 'plugins.formatter'
require 'plugins.nvim-cmp'
require 'plugins.nvim-treesitter'

require 'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use 'mhartington/formatter.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly'
  }
  use 'f-person/git-blame.nvim'
  use {
    'NTBBloodbath/galaxyline.nvim',
    config = function()
      require('galaxyline.themes.eviline')
    end,
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'gpanders/editorconfig.nvim'
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use {
    'tanvirtin/vgit.nvim',
    config = function()
      require('vgit').setup()
    end,
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'romgrk/barbar.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }
  use {
    'rmagatti/auto-session',
    config = function()
      require('auto-session').setup {
        log_level = 'info',
        auto_session_suppress_dirs = '~/src'
      }
    end
  }
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  use 'onsails/lspkind-nvim'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use { "akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
    require("toggleterm").setup {
      direction = 'float'
    }
  end }
end)
