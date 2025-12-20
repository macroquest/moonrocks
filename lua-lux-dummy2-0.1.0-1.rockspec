rockspec_format = "3.0"
package = "lua-lux-dummy2"
version = "0.1.0-1"

description = {
	summary = "Just a dummy rock for testing purposes",
	maintainer = "rodamaral",
	labels = {
		"dummy",
	},
}

dependencies = {
	"lua>=5.1",
	"penlight==1.1.0",
	"lua-cjson~2.0",
}

source = {
	url = "https://github.com/rodamaral/lua-lux-dummy2/archive/refs/tags/v0.1.0.zip",
}

build = {
	type = "builtin",
}
