require 'plugins.nvim-tree'
require 'plugins.dap'
local packer = require('packer')

packer.startup(function()
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
  use 'mfussenegger/nvim-dap'
end)
