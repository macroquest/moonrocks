rockspec_format = "3.0"
package = "lua-lux-dummy1"
version = "0.2.8-1"

description = {
	summary = "Just a dummy rock for testing purposes",
	maintainer = "rodamaral",
	labels = {
		"dummy",
	},
}

dependencies = {
	"lua>=5.1",
	"argparse==0.7.1",
}

source = {
	url = "https://github.com/rodamaral/lua-lux-dummy1/archive/refs/tags/v0.2.8.zip",
}

build = {
	type = "builtin",
	modules = {
		["lua-lux-dummy1"] = "src/init.lua",
	},
}
