require('keymap')
require('plugins')


local vimConfig = {
  'number',
  'relativenumber',
  'expandtab',
  'smartindent',
  { 'clipboard', 'unnamedplus' },
  { 'tabstop', 2 },
  { 'shiftwidth', 2 },
}
local function initVimConfig()
  for _, value in ipairs(vimConfig) do
    local k, v = value, true
    if (type(value) == 'table') then
      k, v = value[1], value[2]
    end
    vim.opt[k] = v
  end
end

initVimConfig()
