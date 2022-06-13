vim.g.mapleader = " "
vim.g.maplocalleader = " "

local function setup()
  local dir_path, mode = string.gsub(debug.getinfo(1).source, "^@(.+/)[^/]+$", "%1"):sub(0, -1):gsub("[\t]*$", "")
  for line in io.lines(dir_path .. "config") do
    if string.sub(line, 0, 1) == '#' then
      mode = string.gsub(line, "[\t#]*", "")
    end
    local matchRule = "([^\t ]*)[\t ]*(.*)"
    local lsh, rsh = line:match(matchRule)
    if mode and lsh:len() > 0 and rsh:len() > 0 then
      vim.api.nvim_set_keymap(mode, lsh, rsh, {
        noremap = true,
        silent = true
      }
      )
    end
  end
end

setup()
