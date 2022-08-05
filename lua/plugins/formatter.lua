local defaults = require "formatter.defaults"
local util = require "formatter.util"

local prettiereslint = util.copyf(defaults.prettiereslint)
local clangformat = util.copyf(defaults.clangformat)
vim.cmd [[autocmd BufWritePost * FormatWrite]]
require 'formatter'.setup {
  filetype = {
    html = { prettiereslint },
    css = { prettiereslint },
    json = { prettiereslint },
    yaml = { prettiereslint },
    javascript = { prettiereslint },
    javascriptreact = { prettiereslint },
    typescript = { prettiereslint },
    typescriptreact = { prettiereslint },
    c = { clangformat },
    cpp = { clangformat },
  }
}
