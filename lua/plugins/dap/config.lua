local sign_define = vim.fn.sign_define

sign_define('DapBreakpoint', {
  text = '',
  texthl = 'LspDiagnosticsSignError',
  linehl = '',
  numhl = ''
})

sign_define('DapStopped', {
  text = '',
  texthl = 'LspDiagnosticsSignHint',
  linehl = '',
  numhl = ''
})

sign_define('DapBreakpointRejected', {
  text = '',
  texthl = 'LspDiagnosticsSignInformation',
  linehl = 'DiagnosticUnderlineInfo',
  numhl = 'LspDiagnosticsSignInformation'
})

return {
  installation_path  = os.getenv("HOME") .. '/.config/nvim/debugger/'
}
