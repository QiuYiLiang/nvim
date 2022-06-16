local lsp_installer = require "nvim-lsp-installer"

local servers = {
  sumneko_lua = require "lsp",
}

for name, _ in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end
