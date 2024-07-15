local dap = require("dap")
local config = require("plugins.dap.config")

dap.adapters.node2 = {
	type = "executable",
	command = "node",
	args = { config.installation_path .. "jsnode/vscode-node-debug2/out/src/nodeDebug.js" },
}

local config = {
	{
		type = "node2",
		request = "attach",
		name = "Attach Program (Node2 with ts-node)",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		skipFiles = { "<node_internals>/**" },
		port = 9229,
	},
}

dap.configurations.javascript = config
dap.configurations.typescript = config
