local dap = require("dap")
local config = require("plugins.dap.config")
local Split = require("utils.string")

dap.adapters.cppdbg = {
	id = "cppdbg",
	type = "executable",
	command = config.installation_path .. "ccppr_vsc/extension/debugAdapters/bin/OpenDebugAD7",
}

local configurations = {
	{
		name = "Launch file",
		type = "cppdbg",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = true,
		args = function()
			return Split(vim.fn.input("args: "), " ")
		end,
		setupCommands = {
			{
				text = "-enable-pretty-printing",
				description = "enable pretty printing",
				ignoreFailures = false,
			},
		},
	},
}
dap.configurations.cpp = configurations
dap.configurations.c = configurations
