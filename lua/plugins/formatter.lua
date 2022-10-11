local filetypes = require("formatter.filetypes")
local util = require("formatter.util")

local prettiereslint = util.copyf(filetypes.javascriptreact.prettiereslint)
local clangformat = util.copyf(filetypes.cpp.clangformat)
local shfmt = util.copyf(filetypes.sh.shfmt)
local stylua = util.copyf(filetypes.lua.stylua)
local yapf = util.copyf(filetypes.python.yapf)
local gofmt = util.copyf(filetypes.go.gofmt)
local rustfmt = util.copyf(filetypes.rust.rustfmt)
local taplo = util.copyf(filetypes.toml.taplo)
vim.cmd([[autocmd BufWritePost * FormatWrite]])
require("formatter").setup({
	filetype = {
		html = { prettiereslint },
		css = { prettiereslint },
		json = { prettiereslint },
		yaml = { prettiereslint },
		toml = { taplo },
		javascript = { prettiereslint },
		javascriptreact = { prettiereslint },
		typescript = { prettiereslint },
		typescriptreact = { prettiereslint },
		less = { prettiereslint },
		sass = { prettiereslint },
		vue = { prettiereslint },
		c = { clangformat },
		cpp = { clangformat },
		sh = { shfmt },
		lua = { stylua },
		python = { yapf },
		go = { gofmt },
		rust = { rustfmt },
	},
})
