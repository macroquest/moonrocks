rockspec_format = "3.0"
package = "dummy_lux_lib"
version = "0.1.0-1"

description = {
	summary = "",
	maintainer = "rodamaral",
	labels = {
		"",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "https://github.com/rodamaral/dummy_lux_lib/archive/refs/tags/v0.1.0.zip",
}

build = {
	type = "builtin",
	modules = {
		dummy_lux_lib = "src/main.lua",
	},
}
