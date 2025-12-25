rockspec_format = "3.0"
package = "luxdummy2"
version = "0.1.1-1"

description = {
	summary = "",
	maintainer = "rodamaral",
	labels = {
		"",
	},
}

dependencies = {
	"lua>=5.1",
	"argparse==0.7.1",
	"inspect==2.0",
	"lua-cjson==2.1.0-10",
}

source = {
	url = "https://github.com/rodamaral/luxdummy2/archive/refs/tags/v0.1.1.zip",
	dir = "luxdummy2-0.1.1",
}

build = {
	type = "builtin",
	modules = {
		luxdummy2 = "src/main.lua",
	},
}
