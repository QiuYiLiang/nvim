require 'plugins.dap.nvim-dap-ui'
require 'plugins.dap.nvim-dap-virtual-text'
require 'plugins.dap.jsnode'
require 'plugins.dap.ccppr_vsc'

local dbg_installed_list = require 'dap-install.api.debuggers'.get_installed_debuggers()

local install = require 'dap-install.core.install'.install_debugger

local dbg_installed_map = {}

for _, debugger in ipairs(dbg_installed_list) do
  dbg_installed_map[debugger] = true
end

local dgb_list = {
  'python',
  'go',
  'jsnode',
  'ccppr_vsc',
  'chrome'
}

for _, debugger in ipairs(dgb_list) do
  if dbg_installed_map[debugger] ~= true then
    install(debugger)
  end
end

require 'dap-install'.setup(require 'plugins.dap.config')
