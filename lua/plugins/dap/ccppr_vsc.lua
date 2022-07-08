local dap = require('dap')
local config = require 'plugins.dap.config'

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = config.installation_path .. 'ccppr_vsc/extension/debugAdapters/bin/OpenDebugAD7',
}

local configurations= {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
    miDebuggerPath = '/usr/bin/gdb',
    cwd = '${workspaceFolder}',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
  },
}
dap.configurations.cpp = configurations
dap.configurations.c = configurations
