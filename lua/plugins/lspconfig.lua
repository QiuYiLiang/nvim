local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require("lspconfig")

local servers = {
	"tsserver",
	"cssls",
	"jsonls",
	"clangd",
	"pylsp",
	"bashls",
	"eslint",
	"gopls",
	"taplo",
	"rust-analyzer",
	"jdtls",
	"lemminx",
	"dockerls",
	"vuels",
	"volar",
	"pylsp",
}

lsp_installer.setup({})

for _, name in pairs(servers) do
	local server_is_found, server = lsp_installer.get_server(name)
	if server_is_found then
		if not server:is_installed() then
			print("Installing " .. name)
			server:install()
		end
	end
end

lspconfig.util.default_config = vim.tbl_extend("force", lspconfig.util.default_config, {
	on_attach = on_attach,
})

lspconfig.vimls.setup({
	on_attach = require("aerial").on_attach,
})

for _, server in ipairs(lsp_installer.get_installed_servers()) do
	lspconfig[server.name].setup({})
end
