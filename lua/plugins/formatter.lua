local filetypes = require "formatter.filetypes"
local util = require "formatter.util"

local prettiereslint = util.copyf(filetypes.javascriptreact.prettiereslint)
local clangformat = util.copyf(filetypes.cpp.clangformat)
local sh = util.copyf(filetypes.sh.shfmt)
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
    sh = { sh }
  }
}
