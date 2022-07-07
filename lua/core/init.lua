require 'keymap'
require 'plugins'
require 'command'

local vimConfig = require 'core.vim-config'
local function initVimConfig()
  for _, value in ipairs(vimConfig) do
    local k, v = value, true
    if (type(value) == 'table') then
      k, v = value[1], value[2]
    end
    vim.opt[k] = v
  end
end

initVimConfig()
