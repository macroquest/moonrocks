rockspec_format = "3.0"
package = "lua-lux-dummy1"
version = "0.2.5-1"

description = {
	summary = "Just a dummy rock for testing purposes",
	maintainer = "rodamaral",
	labels = {
		"dummy",
	},
}

dependencies = {
	"lua>=5.1",
	"penlight==1.14.0",
	"argparse==0.7.1",
	"lua-cjson==2.1.0",
}

source = {
	url = "https://github.com/rodamaral/lua-lux-dummy1/archive/refs/tags/v0.2.5.zip",
}

build = {
	type = "builtin",
	modules = {
		["foo.main"] = "src/init.lua",
	},
}
