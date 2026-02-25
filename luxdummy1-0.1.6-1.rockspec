rockspec_format = "3.0"
package = "luxdummy1"
version = "0.1.6-1"

description = {
	summary = "",
	maintainer = "rodamaral",
}

dependencies = {
	"lua>=5.1",
	"lua-cjson==2.1.0",
	"argparse==0.7.1",
	"inspect==3.1.3",
}

source = {
	url = "https://github.com/rodamaral/luxdummy1/archive/refs/tags/v0.1.6.zip",
	dir = "luxdummy1-0.1.6-1",
}

build = {
	type = "builtin",
	modules = {
		luxdummy1 = "src/main.lua",
		luxdummy1_lua = "lua/main.lua",
	},
}
