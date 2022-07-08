local defaults = require "formatter.defaults"
local util = require "formatter.util"

local prettier = util.copyf(defaults.prettier)
vim.cmd [[autocmd BufWritePost * FormatWrite]]
require 'formatter'.setup {
  filetype = {
    html = { prettier },
    css = { prettier },
    json = { prettier },
    yaml = { prettier },
    javascript = { prettier },
    javascriptreact = { prettier },
    typescript = { prettier },
    typescriptreact = { prettier },
  }
}
