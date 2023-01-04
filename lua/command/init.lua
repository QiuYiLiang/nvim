if not vim.api.nvim_create_user_command then
	return
end

local cmd = vim.api.nvim_create_user_command

cmd("DapUiToggle", function()
	require("dapui").toggle()
end, {
	nargs = 0,
})

cmd("DapHover", function()
	require("dap.ui").hover()
end, {
	nargs = 0,
})

cmd("Power", function()
	print(
		io.popen(
			"echo $[$[$(cat /sys/class/power_supply/BAT0/charge_now) * 100] / $(cat /sys/class/power_supply/BAT0/charge_full)]"
		):read("*all")
	)
end, {
	nargs = 0,
})
