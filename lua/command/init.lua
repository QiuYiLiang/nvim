if not vim.api.nvim_create_user_command then
  return
end

local cmd = vim.api.nvim_create_user_command

cmd('DapShowScopes',
  function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
  end,
  {
    nargs = 0
  }
)

cmd('DapShowFrames',
  function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
  end,
  {
    nargs = 0
  }
)

cmd('DapHover',
  function()
    require('dap.ui.widgets').hover()
  end,
  {
    nargs = 0
  }
)
