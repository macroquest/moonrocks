rockspec_format = "3.0"
package = "luxdummy1"
version = "0.1.0-1"

description = {
	summary = "",
	maintainer = "rodamaral",
}

dependencies = {
	"lua>=5.1",
	"argparse==0.7.1",
}

source = {
	url = "https://github.com/rodamaral/luxdummy1/archive/refs/tags/v0.1.0.zip",
}

build = {
	type = "builtin",
	modules = {
		luxdummy1 = "src/main.lua",
	},
}
