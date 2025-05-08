local dap = require "dap"

dap.adapters.hl = {
	type = "executable",
	command = "node",
	args = { "/home/madbanana22/dev/haxe/haxe-hl-debugger/adapter.js" }
}
