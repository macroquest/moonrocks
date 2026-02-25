rockspec_format = "3.0"
package = "luxdummy1"
version = "0.1.5-1"

description = {
	summary = "",
	maintainer = "rodamaral",
}

dependencies = {
	"lua>=5.1",
	"inspect==3.1.3",
	"lua-cjson==2.1.0",
	"argparse==0.7.1",
}

source = {
	url = "https://github.com/rodamaral/luxdummy1",
}

build = {
	type = "builtin",
	modules = {
		luxdummy1 = "src/main.lua",
		luxdummy1lua = "lua/main.lua",
	},
	install = {
		lua = {
			luxdummy1lua = "lua/main.lua",
			luxdummy1 = "src/main.lua",
		},
	},
}
