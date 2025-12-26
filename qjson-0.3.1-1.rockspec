rockspec_format = "3.0"
package = "qjson"
version = "0.3.1-1"

description = {
	summary = "Tiny, quick JSON library for lua.",
	license = "MIT",
	maintainer = "vurvdev",
	labels = {
		"json",
		"lua",
		"parser",
		"serializer",
		"data",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "https://github.com/vurvdev/qjson",
}

build = {
	type = "builtin",
}
