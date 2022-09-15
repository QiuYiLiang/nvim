local dir_path = string.gsub(debug.getinfo(1).source, "^@(.+/)[^/]+$", "%1"):sub(0, -1):gsub("[\t]*$", "")
require("packer").startup(function()
	for plugin in io.lines(dir_path .. "plugins") do
		use(plugin)
	end
end)
