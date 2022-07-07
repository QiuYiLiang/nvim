require 'plugins.dap.ui'
require 'plugins.dap.js'

local dap_install = require 'dap-install'

local config = require 'plugins.dap.config'

dap_install.setup(config)

